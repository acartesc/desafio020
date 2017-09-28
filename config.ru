# config.ru
require 'rack'
class MiPrimeraWebApp
	def call(env)
		if env['REQUEST_PATH'] == '/'
		[202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
		end
	end
end
run MiPrimeraWebApp.new