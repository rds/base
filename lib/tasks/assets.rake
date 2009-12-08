namespace :assets do
	desc "Download latest uncompressed 960 stylesheets using curl"
	task :grid do
		path = "#{RAILS_ROOT}/public/stylesheets"
		files = [
			'http://bitbucket.org/nathansmith/960-grid-system/raw/default/code/css/uncompressed/960.css',
			'http://bitbucket.org/nathansmith/960-grid-system/raw/default/code/css/uncompressed/reset.css',
			'http://bitbucket.org/nathansmith/960-grid-system/raw/default/code/css/uncompressed/text.css'
		]
		files.each { |file| `cd #{path}; curl -O #{file}` }
	end
	
	desc "Download latest jquery"
	task :jquery do
		path = "#{RAILS_ROOT}/public/javascripts"
		files = [
			'http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.js',
			'http://github.com/brandonaaron/livequery/raw/master/jquery.livequery.js'
		]
		files.each { |file| `cd #{path}; curl -O #{file}` }
	end
end