package cmpe282

import controllers.cmpe282.*;
	import grails.rest.*
	
	@Resource(uri='/indexdata')
	class Indexdata {
     String Album;
	 String Artist;
	 String Track;
	 int Rating;
		
		static mapping = {
			version false
			table "displayindex"
			}
		static constraints = {
		}
}
