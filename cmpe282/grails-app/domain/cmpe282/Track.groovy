package cmpe282

import grails.rest.*
@Resource(uri='/trackratings')

class Track {
	Integer userid
	Integer itemid
	Integer rating
	
	static mapping = {
		version false
		table trackrecommendation
		}
    static constraints = {
    }
}
