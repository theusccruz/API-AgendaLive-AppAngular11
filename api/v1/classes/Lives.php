<?php
class Lives
{
    public function getAll()
    {
        $conn = Database::connectDB();

        $sql = 'SELECT * FROM lives';
        $stms = $conn->prepare($sql);
        $stms->execute();

        $dados = array();
        while ($row = $stms->fetchAll(PDO::FETCH_ASSOC)) {
            $dados = $row;
        }
        if (!$dados) {
            throw new Exception("Sem registros");
        }

        return $dados;
    }
}
