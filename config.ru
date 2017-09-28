# config.ru
require 'rack'
class MiPrimeraWebApp
	def call(env)
		@url = env['REQUEST_PATH'] 
		case @url 
		when '/index' 
			[202, { 'Content-Type' => 'text/html' }, ['Estás en el index!']]
		when '/otro'
			[200, { 'Content-Type' => 'text/html' }, ['Estás en otro landing!']]
		else
			[404, { 'Content-Type' => 'text/html' }, [File.read('404.html')]]
		end
	end
end
run MiPrimeraWebApp.new