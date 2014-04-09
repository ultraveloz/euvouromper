package br.com.orlandoburli.euvouromper.web.servlets.geral;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.orlandoburli.euvouromper.model.be.site.NoticiaBe;
import br.com.orlandoburli.euvouromper.model.vo.site.NoticiaVo;
import br.com.orlandoburli.framework.core.be.exceptions.persistence.ListException;
import br.com.orlandoburli.framework.core.dao.DAOManager;
import br.com.orlandoburli.framework.core.log.Log;
import br.com.orlandoburli.framework.core.utils.Utils;

@WebServlet("/noticia/*")
public class NoticiaServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		DAOManager manager = new DAOManager();

		try {
			NoticiaVo noticia = new NoticiaBe(manager).getByUrl(Utils.getUrl(req));

			req.setAttribute("noticia", noticia);

		} catch (ListException e) {
			Log.error(e);
		} finally {
			manager.commit();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
