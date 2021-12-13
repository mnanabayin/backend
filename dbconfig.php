<?php
class Database
{
	private $pdo;
	
	public function __construct($host,$dbname,$username,$password)
	{
		$con = new PDO ('mysql:host='.$host.'; dbname='.$dbname.';', $username, $password);
		$con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$this->pdo = $con;
	}
	public function query($sql,$val)
	{
		try{
			$val = "%$val%";
			$stmt = $this->pdo->prepare($sql);
			$stmt->bindParam(":to_search",$val);
			$stmt->execute();
			
			if($sql && $val)
			{
				$data = $stmt->fetchAll(PDO::FETCH_ASSOC);
				return $data;
			}
			else{
				return array();
			}
		}
		catch(Exception $e){
			throw $e;
		}
	}
}
?>