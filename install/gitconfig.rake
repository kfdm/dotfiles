namespace :install do
	desc "Setup gitconfig data"
	task :gitconfig do
		begin
			require 'inifile'
		rescue LoadError
			require 'rubygems'
			require 'inifile'
		end
		$ini = ::IniFile.load "#{$install_dir}/gitconfig.ini"
		$ini.each do |section, parameter, value|
			sh 'git','config','--global',"#{section}.#{parameter}","#{value}"
		end
		puts 'Remember to setup your user and token'.red
		puts 'git config --global github.user <user>'.yellow
		puts 'git config --global github.token <token>'.yellow
	end
end