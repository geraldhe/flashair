-- log to server by executing a script, which writes the body-content of a POST-call into a file

local function log(message)
	b, c, h = fa.request{
		url = "http://my-server/log.php",
		method = "POST",
		headers = {["Content-Length"] = string.len(message),
		["Content-Type"] = "application/x-www-form-urlencoded"},
		body = message
	}
    return nil
end

-- example php script:
<?
file_put_contents("log.txt", "\r\n".file_get_contents('php://input'), FILE_APPEND | LOCK_EX);
?>
