<?php

use Slim\App;

return function (App $app) {
    // e.g: $app->add(new \Slim\Csrf\Guard);
    // $app->add(new \Tuupola\Middleware\JwtAuthentication([
    //     "path" => "/api", /* or ["/api", "/admin"] */
    //     "attribute" => "decoded_token_data",
    //     "secret" => "itgeniussupersecretepassword2020",
    //     "algorithm" => ["HS256"],
    //     "error" => function ($response, $arguments) {
    //         $data["status"] = "error";
    //         $data["message"] = $arguments["message"];
    //         return $response
    //             ->withHeader("Content-Type", "application/json")
    //             ->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
    //     }
    // ]));
};
