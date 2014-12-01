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
			session.username = s
			redirect(uri:'/')
			//redirect(controller:'main')
		
			
		} else {
		
			render (view : "login")
			
		}
	}
	
	}
