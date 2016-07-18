<?
	header("Access-Control-Allow-Origin: *");
	header("Content-type: application/json");
	
	/* dichiariamo alcune importanti variabili per collegarci al database */
	$DBhost = "localhost";
	$DBuser = "hypermediaproject2016";
	$DBpass = "!sida9394!";
	$DBName = "my_hypermediaproject2016";
	
	/* specifichiamo il nome della nostra tabella */
	$table = "smartphone";
	
	/* Connettiamoci al database */
	mysql_connect($DBhost,$DBuser,$DBpass) or die("Impossibile collegarsi al server");
	mysql_select_db("$DBName") or die("Impossibile connettersi al database $DBName");
	
	//prendo l'id che ho ricevuto da uno dei 3 bottoni.
	$id = $_GET['ID']; 
	
	$sqlquery = "SELECT * FROM $table WHERE ID = '".$id."'";
	$result = mysql_query($sqlquery);
	$number = mysql_num_rows($result);
		//echo "Dispositivo $i:";
			
	$i = 0;
	
	$smartphone = array();
	$smartphone["name"] = mysql_result($result,$i,"name");
	$smartphone["img"] = mysql_result($result,$i,"img");
	$smartphone["brand"] = mysql_result($result,$i,"brand");
	$smartphone["tecnology"] = mysql_result($result,$i,"tecnology");
	$smartphone["connection"] = mysql_result($result,$i,"connection");
	$smartphone["display"] = mysql_result($result,$i,"display");
	$smartphone["photocamera"] = mysql_result($result,$i,"photocamera");
	$smartphone["memory"] = mysql_result($result,$i,"memory");
	$smartphone["processor"] = mysql_result($result,$i,"processor");
	$smartphone["sim"] = mysql_result($result,$i,"sim");
	$smartphone["prev"] = mysql_result($result,$i,"prev");
	$smartphone["next"] = mysql_result($result,$i,"next");
	$smartphone["services"] = mysql_result($result,$i,"services");
	$smartphone["assistance"] = mysql_result($result,$i,"assistance");
	$smartphone["promotions"] = mysql_result($result,$i,"promotions");
	$smartphone["price"] = mysql_result($result,$i,"price");
		
	$dispositivo = json_encode($smartphone);
		
	echo $dispositivo;
    				
?>

