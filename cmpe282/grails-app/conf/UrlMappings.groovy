class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
	//	"/cmpe282/userlogin"(view:"/user/login")
        "500"(view:'/error')
	}
}
