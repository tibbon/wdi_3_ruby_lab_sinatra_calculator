require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/test' do
	"Test 123"
end

get '/maths/:x/:operation/:y' do |x, operation, y|
	@operation = operation
	@x, @y = x.to_i, y.to_i
	@result = case operation
	when 'add'
		@x + @y
	when 'subtract'
		@x - @y
	when 'multiply'
		@x * @y
	when 'divide'
		@x.to_f / @y
	end
	erb :calc
end
