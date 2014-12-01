package cmpe282
import cmpe282.Indexdata;
class IndexdataController {

    def index() {
		def session = sessionFactory.getCurrentSession()
			def query = session.createSQLQuery("select * from displayindex")
			List result = query.list();
			def resultArray = result.toArray()

						println resultArray
						render(view:"index",model:[data:resultArray])
		
	}
}