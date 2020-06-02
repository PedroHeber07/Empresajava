/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

//import java.sql.Connection;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.engine.spi.SessionFactoryImplementor;

/**
 *
 * @author admin
 */
public class Dao {
    static private Session session = HibernateUtil.getSessionFactory().openSession();

    public static Connection getConnection() throws SQLException {
        SessionFactoryImplementor sessionImplementor = (SessionFactoryImplementor) HibernateUtil.getSessionFactory();
        return sessionImplementor.getConnectionProvider().getConnection();
    }
    
    static public List executarConsultaHQL(String hql) {
        List resultList = null;
        try {
            session.beginTransaction();
            resultList = session.createQuery(hql).list();
            session.getTransaction().commit();
        } catch (HibernateException he) {
            throw he;
        }
        return resultList;
    }

    static public void salvar(Object obj) {
        try {
            session.beginTransaction();
            session.save(obj);
            session.getTransaction().commit();
        } catch (HibernateException he) {
            throw he;
        }
    }

    static public void atualizar(Object obj) {
        try {
            session.beginTransaction();
            session.update(obj);
            session.getTransaction().commit();
        } catch (HibernateException he) {
            throw he;
        }
    }

    static public void apagar(Object obj) {
        try {
            session.beginTransaction();
            session.delete(obj);
            session.getTransaction().commit();
        } catch (HibernateException he) {
            throw he;
        }
    }
}