require 'webrick'

server = WEBrick::HTTPServer.new({
  DocumentRoot:   'dive-into-code-itabashi-planet.c9users.io',
  BindAddress:    "0.0.0.0",
  Port:           8080,
  CGIInterpreter: '/usr/local/rvm/rubies/ruby-2.4.0/bin/ruby'
})

# WEBrick::HTTPServlet::FileHandlerをWEBrick::HTTPServlet::ERBHandlerに変更する
# 'test.html'を'test.html.erb'に変更する
server.mount('/test', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')

server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')

# この一行を追記
server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')

server.start