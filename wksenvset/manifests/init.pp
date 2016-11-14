class wksenvset {
	# set default home page
        file { '/etc/firefox/syspref.js':
                content => 'lockPref("browser.startup.homepage", "http://gazeta.ru");\n\n',
        }
	# turn on colored prompt
	exec { 'apt-update':
   		command => "/bin/sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/' .bashrc"
	}
}

