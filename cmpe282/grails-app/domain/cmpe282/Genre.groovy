package cmpe282

import grails.rest.*

@Resource(uri='/genreratings')
class Genre {
    Integer userid
	Integer itemid
	Integer rating
	
	static mapping = {
		version false
    	table genrerecommendation
		}
    static constraints = {
    }
}
