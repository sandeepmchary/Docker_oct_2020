<?
header("content-type: text");
$host = "db";// The host name db from our docker-compose file
$username = "root"; // We use the root password
$pw = "my!!root!!passwd"; // This the password we set in the docker-compose file
$conn=new mysqli($host,$username,$pw);
if($conn->connect_errno > 0){
    echo $db->connect_error;
}else{
    echo "DB connection successfull\n\n";
}