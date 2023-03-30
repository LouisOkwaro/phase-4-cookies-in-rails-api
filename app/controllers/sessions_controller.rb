class SessionsController < ApplicationController
  
  # in this method, we're setting values on the session
  # hash, and the cookies hash, and serializing them in 
  # the response so we can view their values in the browser.

  # ||= syntax is a shorthand way to assign a value, if its current value is nil or false. 
  # So, if session[:session_hello] hasn't been assigned a value, it'll be assigned a value of "World".
  # Otherwise, it won't get assigned a new value
  def index
    session[:session_hello] ||= "World"
    cookies[:cookies_hello] ||= "World"
    render json: { session: session, cookies: cookies.to_hash }
  end

end