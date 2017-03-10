<?php

require_once 'vendor/autoload.php';

$pagePath = 'web/index.html';
$page = file_get_contents($pagePath);
$result = Minify_HTML::minify($page);

$pageLen = strlen($page);
$resultLen = strlen($result);
if ($resultLen < $pageLen) {
    printf("Minified '%s' from %d to %d bytes\n", $pagePath, $pageLen, $resultLen);
    file_put_contents($pagePath, $result);
}
