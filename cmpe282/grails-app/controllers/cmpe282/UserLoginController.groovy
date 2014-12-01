package cmpe282

import org.apache.hadoop.conf.*;
import org.apache.hadoop.fs.Path
import org.apache.hadoop.mapred.*;

import com.mysql.jdbc.jdbc2.optional.MysqlConnectionPoolDataSource
class UserLoginController {

    def index() { 
		
	}
	def login = {
		//validate student login
		println params.username
		def s = Userdata.findByUsername(params.username)
		if (s) {
			// username and password match -> log in
			session.user = s
			
			
		//	def display = Indexdata.findAll()
		//	println display
			
		//	def session = sessionFactory.getCurrentSession()
		//	def query = session.createSQLQuery("select * from displayindex")
	//	List result = query.list();
	//		def resultArray = result.toArray()

		//				println resultArray
//						render(view:"index",model:[data:resultArray])
					redirect(uri:"index")			
		}
		 else {
		
			render (view : "login")
			
		}
	}
	def logout ={
		session.user = null
		redirect (uri:"/")
		}
	
	def register= {
		
		def newuser = new Userdata(
			username:params.username,
			fname:params.fname,
			lname:params.lname,
			email:params.email,
			adress:params.address,
			password:params.password)
		println params.username
		newuser.save(flush:true)
		if (!newuser.save()){
			
			render(view:"login")
		}
		session.user = newuser
		render(view:"index")
		
		}
	}
