<?php
class Database
{
    public static function connectDB()
    {
        $dbInfoPath = realpath('dbInfo.ini');
        $db = parse_ini_file($dbInfoPath);
        
        try { 
            $connection = new PDO("pgsql:host={$db['host']}; port={$db['port']}; 
			dbname={$db['db']};", $db['username'], $db['password']);
        } catch (PDOException $erro) {
            echo $erro;
        }
        return $connection;
    }
}
