namespace :install do
	desc "Setup OSX defaults data"
	task :defaults do
		begin
			require 'inifile'
		rescue LoadError
			require 'rubygems'
			require 'inifile'
		end
		$ini = ::IniFile.load "#{$install_dir}/defaults.ini"
		$ini.each do |domain, key, value|
			sh 'defaults','write',"#{domain}","#{key}","#{value}"
		end
	end
end