package cmpe282

import grails.rest.*

@Resource(uri='/albumratings')
class Album {
    Integer userid
	Integer itemid
	Integer rating
	
	static mapping = {
		version false
    	table albumrecommendation
		}
    static constraints = {
    }
}
