package cmpe282

class Userdata {
   
	String username
	String fname
	String lname
	String email
	String address
	String password
	
	Integer id
	
    static constraints = {
    		username unique:true
			password nullable: false
		}
	static mapping = {
		version false
		//id false
		//id generator:'assigned', column:'Student_id', type:'integer'
		id name: 'id'
	}
	
}
