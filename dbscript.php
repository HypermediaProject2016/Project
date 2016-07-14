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

    /*$img = mysql_result($result,$i,"img");
    //echo "<div>Nome: $nome</div>";
    $brand = mysql_result($result,$i,"brand");
    //echo "<div>Brand: $brand</div>";
    $name = mysql_result($result,$i,"name");
    //echo "<div>Name: $name</div>";
    $tecnology = mysql_result($result,$i,"tecnology");
    //echo "<div>Tecnology: $tecnology</div>";
    $connection = mysql_result($result,$i,"connection");
    //echo "<div>connection: $connection</div>";
    $display = mysql_result($result,$i,"display");
    //echo "<div>display: $display</div>";
    $photocamera = mysql_result($result,$i,"photocamera");
    //echo "<div>photocamera: $photocamera</div>";
    $memory = mysql_result($result,$i,"memory");
    //echo "<div>memory: $memory</div>";
    $processor = mysql_result($result,$i,"processor");
    //echo "<div>processor: $processor</div>";
    $prev = mysql_result($result,$i,"prev");
    //echo "<div>prev: $prev</div>";
    $next = mysql_result($result,$i,"next");
    //echo "<div>next: $next</div>";
    $services = mysql_result($result,$i,"services");
    //echo "<div>services: $services</div>";
    $assistance = mysql_result($result,$i,"assistance");
    //echo "<div>assistance: $assistance</div>";
    $promotions = mysql_result($result,$i,"promotions");
    //echo "<div>promotions: $promotions</div>";
    $price = mysql_result($result,$i,"price");
    //echo "<div>price: $price</div></br></br>";*/
    
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
    
    /*$smartphone = array($img, $brand, $name, $tecnology, $connection, $display, 
    					$photocamera,$memory,$processor,$prev,$next,$services,$assistance,
    					$promotions,$price);*/
    //$smartphone = array_map('utf8_encode', $smartphone);		
    
    $dispositivo = json_encode($smartphone);
    
    echo $dispositivo;
    					
//$smartphone=utf8_encode($smartphone);
    
    /*echo "<div>". $smartphone[0] . "</br>". $smartphone[1] . "</br>". $smartphone[2] . "</br>". $smartphone[3] . 
    	 "</br>". $smartphone[4] . "</br>". $smartphone[5] . "</br>". $smartphone[6] . "</br>". $smartphone[7] . 
    	 "</br>". $smartphone[8] . "</br>". $smartphone[9] . "</br>". $smartphone[10] . "</br>". $smartphone[11] . 
    	 "</br>". $smartphone[12] . "</br>". $smartphone[13] . "</br>". $smartphone[14] . "</div>";
    */








//echo "<div>Numero di colonne: $number</div>";

//$iphone = array($result);
//echo "<div>Nome: $result</div>";



/*$i = 0;
if ($number < 1) {
  print "<center><p>La ricerca non ha prodotto nessun risultato</p></center>";
}else{
  while ($number > $i) {
    $nome = mysql_result($result,$i,"nome");
    $email = mysql_result($result,$i,"email");
    echo "<p><b>Nome:</b> $nome<br>
    <b>E-Mail:</b> $email</p>";
    $i++;
      }
}
*/
?>

