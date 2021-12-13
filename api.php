<?php
ob_clean();
header('Access-Control-Allow-Origin: *'); 
header("Content-type: application/json; charset=utf-8");

//including database configuration
require_once('dbconfig.php');

//for simplicity the credentials are not placed in an environment variable
$db = new Database("localhost", "pb_search_db", "root", "");
$response = array();


//receiving GET request begins here
if($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET['q']) && trim($_GET['q']) != "")
{
	try{
			$val=strtoupper(trim($_GET['q']," \n\r\t\v\0")); 
			$sql = "SELECT p_name,p_img_src,p_incentive,p_url FROM `product_tbl` WHERE UPPER(p_name) LIKE :to_search ORDER BY `p_name` ASC LIMIT 6";
			$result = $db->query($sql,$val);
			$response[0] = array(
				'status' => true,
				'message'=> "Success",
				'total'=> count($result),
				'data'=> $result
			);
	}
	catch(Exception $e){
		$response[0] = array(
			'status' => false,
			'message'=> "Unexpected server error",
			'total'=> 0,
			'data'=> []
		);
	http_response_code(500);
	}
}
else
{
	$response[0] = array(
		'status' => false,
		'message'=> "Not allowed",
		'total'=> 0,
		'data'=> []
	);
	http_response_code(405);
}

echo json_encode($response); 

?>