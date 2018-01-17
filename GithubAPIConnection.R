##Create Connection with github api
oauth_endpoints("github")
app <- oauth_app("github",
                   key = "50e31925a63ffbdf7c98",
                   secret = "8bf9efb88ea83dfaa9324d797b0914b5d19ca057")
github_token <- oauth2.0_token(oauth_endpoints("github"), app)
gtoken <- config(token = github_token)

##Get repo data.
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
cont <- content(req)