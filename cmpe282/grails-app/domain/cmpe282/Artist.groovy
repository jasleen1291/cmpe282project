package cmpe282
import grails.rest.*

@Resource(uri='/genreratings')
class Artist {
	Integer userid
	Integer itemid
	Integer rating
	
	static mapping = {
		version false
		table "artistrecommendation1"
		}
    static constraints = {
    }
}
