<?php
require_once ('./config.php');

if (isset($_REQUEST)) {
   echo Rest::open($_REQUEST);
}
