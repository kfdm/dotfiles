namespace :install do
	desc "Setup gitconfig data"
	task :gitconfig do
		require 'ini'
		require 'colored'
		$ini = Ini::load("#{$install_dir}/gitconfig.ini")
		$ini.each do |section, parameter, value|
			sh 'git','config','--global',"#{section}.#{parameter}","#{value}"
		end
		puts 'Remember to setup your user and token'.red
		puts 'git config --global github.user <user>'.yellow
		puts 'git config --global github.token <token>'.yellow
	end
end