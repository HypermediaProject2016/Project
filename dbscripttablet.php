<?
	header("Access-Control-Allow-Origin: *");
	header("Content-type: application/json");
	
	/* dichiariamo alcune importanti variabili per collegarci al database */
	$DBhost = "localhost";
	$DBuser = "hypermediaproject2016";
	$DBpass = "!sida9394!";
	$DBName = "my_hypermediaproject2016";
	
	/* specifichiamo il nome della nostra tabella */
	$table = "tablet";
	
	/* Connettiamoci al database */
	$con=mysql_connect($DBhost,$DBuser,$DBpass) or die("Impossibile collegarsi al server");
	mysql_select_db($DBName, $con) or die("Impossibile connettersi al database $DBName");
	
	//prendo l'id che ho ricevuto da uno dei 3 bottoni.
	$id = $_GET['ID']; 
	
	$sqlquery = "SELECT * FROM $table WHERE ID = '".$id."'";
	$result = mysql_query($sqlquery);
	$number = mysql_num_rows($result);
		
	$i = 0;
	
    $tablet = array();
    $tablet["name"] = mysql_result($result,$i,"name");
    $tablet["img"] = mysql_result($result,$i,"img");
    $tablet["brand"] = mysql_result($result,$i,"brand");
    $tablet["tecnology"] = mysql_result($result,$i,"tecnology");
    $tablet["connection"] = mysql_result($result,$i,"connection");
    $tablet["display"] = mysql_result($result,$i,"display");
    $tablet["photocamera"] = mysql_result($result,$i,"photocamera");
    $tablet["memory"] = mysql_result($result,$i,"memory");
    $tablet["processor"] = mysql_result($result,$i,"processor");
    $tablet["sim"] = mysql_result($result,$i,"sim");
    $tablet["prev"] = mysql_result($result,$i,"prev");
    $tablet["next"] = mysql_result($result,$i,"next");
    $tablet["services"] = mysql_result($result,$i,"services");
    $tablet["assistance"] = mysql_result($result,$i,"assistance");
    $tablet["promotions"] = mysql_result($result,$i,"promotions");
    $tablet["price"] = mysql_result($result,$i,"price");
    
    $dispositivo = json_encode($tablet);
	
	mysql_close($con);
    
    echo $dispositivo;				

?>

