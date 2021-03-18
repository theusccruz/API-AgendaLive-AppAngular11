<?php 
class Rest
{
    public static function open($request)
    {
        $url = explode('/', $_REQUEST['url']);

        $classe = ucfirst($url[0]);
        array_shift($url);
        $metodo = $url[0];
        array_shift($url);
        $param = array();
        $param = $url;

        try {
            if (class_exists($classe)) {
                if (method_exists($classe, $metodo)) {
                    $retorno = call_user_func_array(array(new $classe, $metodo), $param);
                    return json_encode(array(
                        'status' => 200,
                        'dados' => $retorno
                    ));
                } else {
                    return json_encode(array(
                        'status' => 200,
                        'dados' => 'Método inexistente!'
                    ));
                }
            } else {
                return json_encode(array(
                    'status' => 200,
                    'dados' => 'Classe inexistente!'
                ));
            }
        } catch (Exception $e) {
            return json_encode(array(
                'status' => 200,
                'dados' => $e->getMessage()
            ));
        }
    }
}