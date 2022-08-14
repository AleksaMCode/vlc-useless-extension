function descriptor()
	return {
		title = "Useless extension";
		version = "1.0";
		author = "Aleksa Majkić";
		url = 'https://github.com/AleksaMCode/vlc-useless-extension';
	}
end
function activate()
	create_dialog()
end
function deactivate()
	dialog:delete()
end
function close()
	vlc.deactivate()
end
function create_dialog()	
	dialog = vlc.dialog(descriptor().title)	
	dialog:add_label("This extension has one button:",1,3,1,1)
	dialog:add_button("Click me", click_useless,2,3,1,1)		
end
function click_useless()
	vlc.deactivate()
end