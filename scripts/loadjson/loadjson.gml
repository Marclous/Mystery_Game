function import_json(_file_name, _func) {
	if file_exists(_file_name) {
		var _file, _json_string
		_file = file_text_open_read(_file_name)
		_json_string = ""
		while !file_text_eof(_file) {
			_json_string += file_text_read_string(_file)
			file_text_readln(_file)
		}
		file_text_close(_file)
		return script_execute(_func,_json_string)
	}
	return undefined
}

global.gameinfo = import_json("mystery.json", json_parse)