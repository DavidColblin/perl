#!C:\strawberry\perl\bin\perl.exe
use CGI;

$cgi = new CGI;

for $key ( $cgi->param() ) {
	$input{$key} = $cgi->param($key);
}

print qq{Content-type: text/html

<html><head></head><body>
};

foreach $key (sort (keys %ENV)) {
	print $key, ' = ', $ENV{$key}, "<br>\n";
}

for $key ( keys %input ) {
	print $key, ' = ', $input{$key}, "<br>\n";
}

print qq{<form METHOD=POST><input type="submit" value="Post Request">
         <input name="postfield"></form>};
print qq{<form METHOD=GET ><input type="submit" value="Get  Request ">
         <input name="getfield" ></form>};

print qq{</body></html>};