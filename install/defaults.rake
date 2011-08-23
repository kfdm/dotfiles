namespace :install do
	desc "Setup OSX defaults data"
	task :defaults do
		require 'ini'
		require 'colored'
		$ini = Ini::load("#{$install_dir}/defaults.ini")
		$ini.each do |domain, key, value|
			sh 'defaults','write',"#{domain}","#{key}","#{value}"
		end
	end
end