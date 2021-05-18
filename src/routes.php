<?php

use Slim\App;
use Slim\Http\Request;
use Slim\Http\Response;

return function (App $app)
{
    $container = $app->getContainer();

    // การสร้าง Routing
    // Root
    $app->get('/', function (Request $request, Response $response, array $args) use ($container)
    {
        echo "<h1 style='text-align:center; margin-top:45vh'>STOCK API</h3>";
    });


    // Routing Group
    $app->group('/api', function () use ($app)
    {

        $container = $app->getContainer();

        // User Login
        $app->post('/login', function (Request $request, Response $response, array $args) use ($container){
    
            $input = $request->getParsedBody();
            $pass = md5($input['password']);

            $sql = "SELECT * FROM users WHERE username=:username and password=:password";
            $sth = $this->db->prepare($sql);
            $sth->bindParam("username", $input['username']);
            $sth->bindParam("password", $pass);
            $sth->execute();

            $count = $sth->rowCount();
            if($count){
                $user = $sth->fetchObject();
                return $this->response->withJson(['code'=> '200', 'status' => 'success','message' => 'Login success', 'data'=>$user]);
            }else{
                return $this->response->withJson(['code'=> '400', 'status' => 'fail','message' => 'Login fail', 'data'=> '']);
            }
        });

        // User Register
        $app->post('/register', function (Request $request, Response $response, array $args) use ($container){
    
            // รับจาก Client
            $body = $this->request->getParsedBody();
            // print_r($body);
            $img = "noimg.jpg";
            $sql = "INSERT INTO users(username,password,fullname,img_profile,status) 
                       VALUES(:username,:password,:fullname,:img_profile,:status)";
            $sth = $this->db->prepare($sql);
            $sth->bindParam("username", $body['username']);
            $sth->bindParam("password", $body['password']);
            $sth->bindParam("fullname", $body['fullname']);
            $sth->bindParam("img_profile", $img);
            $sth->bindParam("status", $body['status']);

            if($sth->execute()){
                $data = $this->db->lastInsertId();
                $input = [
                    'id' => $data,
                    'status' => 'success'
                ];
            }else{
                $input = [
                    'id' => '',
                    'status' => 'fail'
                ];
            }

            return $this->response->withJson($input); 

        });

        // Get Users by ID
        $app->get('/users/{id}', function (Request $request, Response $response, array $args) use ($container)
        {
            
            // Read User By ID
            $sql  = "SELECT * FROM users WHERE id='$args[id]'";
            $stmt = $this->db->prepare($sql);
            $stmt->execute();
            $users = $stmt->fetch();

            return $this->response->withJson($users);
        });

        // Get All Products (Method GET)
        $app->get('/products', function (Request $request, Response $response, array $args) use ($container)
        {
            
            // Read product
            $sql  = "SELECT * FROM products ORDER BY id DESC";
            $stmt = $this->db->prepare($sql);
            $stmt->execute();
            $product = $stmt->fetchAll();

            if (count($product))
            {
                $input = [
                    'status'  => 'success',
                    'message' => 'Read Product Success',
                    'data'    => $product,
                ];
            }
            else
            {
                $input = [
                    'status'  => 'fail',
                    'message' => 'Empty Product Data',
                    'data'    => $product,
                ];
            }

            return $this->response->withJson($product);
        });

        // Get  Product By ID (Method GET)
        $app->get('/products/{id}', function (Request $request, Response $response, array $args) use ($container)
        {
            $sql  = "SELECT * FROM products WHERE id='$args[id]'";
            $stmt = $this->db->prepare($sql);
            $stmt->execute();
            $product = $stmt->fetch();

            if (count($product))
            {
                $input = [
                    'status'  => 'success',
                    'message' => 'Read Product Success',
                    'data'    => $product,
                ];
            }
            else
            {
                $input = [
                    'status'  => 'fail',
                    'message' => 'Empty Product Data',
                    'data'    => $product,
                ];
            }

            return $this->response->withJson($product);
        });


         // Add new Product  (Method Post)
         $app->post('/products', function (Request $request, Response $response, array $args) use ($container)
         {
             // รับจาก Client
             $body = $this->request->getParsedBody();
             // print_r($body);
             $current_date = date('Y-m-d');
             $sql = "INSERT INTO products(product_name,product_detail,product_barcode,product_price,product_qty,product_image,product_date) 
                        VALUES(:product_name,:product_detail,:product_barcode,:product_price,:product_qty,:product_image,:product_date)";
            $sth = $this->db->prepare($sql);
            $sth->bindParam("product_name", $body['product_name']);
            $sth->bindParam("product_detail", $body['product_detail']);
            $sth->bindParam("product_barcode", $body['product_barcode']);
            $sth->bindParam("product_price", $body['product_price']);
            $sth->bindParam("product_qty", $body['product_qty']);
            $sth->bindParam("product_image", $body['product_image']);
            $sth->bindParam("product_date", $current_date);
            

            if($sth->execute()){
                $data = $this->db->lastInsertId();
                $input = [
                    'id' => $data,
                    'status' => 'success'
                ];
            }else{
                $input = [
                    'id' => '',
                    'status' => 'fail'
                ];
            }

            return $this->response->withJson($input); 

         });

        // Edit Product  (Method Put)
        $app->put('/products/{id}', function (Request $request, Response $response, array $args) {
             // รับจาก Client
             $body = $this->request->getParsedBody();

             $sql = "UPDATE  products SET 
                            product_name=:product_name,
                            product_detail=:product_detail,
                            product_barcode=:product_barcode,
                            product_price=:product_price,
                            product_qty=:product_qty,
                            product_image=:product_image 
                        WHERE id='$args[id]'";
 
            $sth = $this->db->prepare($sql);
            $sth->bindParam("product_name", $body['product_name']);
            $sth->bindParam("product_detail", $body['product_detail']);
            $sth->bindParam("product_barcode", $body['product_barcode']);
            $sth->bindParam("product_price", $body['product_price']);
            $sth->bindParam("product_qty", $body['product_qty']);
            $sth->bindParam("product_image", $body['product_image']);
            

            if($sth->execute()){
                $data = $args['id'];
                $input = [
                    'id' => $data,
                    'status' => 'success'
                ];
            }else{
                $input = [
                    'id' => '',
                    'status' => 'fail'
                ];
            }

            return $this->response->withJson($input);  
          });

        // Delete Product  (Method Delete)
        $app->delete('/products/{id}', function (Request $request, Response $response, array $args) {
            // รับจาก Client
            $body = $this->request->getParsedBody();
            $sql = "DELETE FROM products WHERE id='$args[id]'";
 
            $sth = $this->db->prepare($sql);
            
            if($sth->execute()){
                $data = $args['id'];
                $input = [
                    'id' => $data,
                    'status' => 'success'
                ];
            }else{
                $input = [
                    'id' => '',
                    'status' => 'fail'
                ];
            }

            return $this->response->withJson($input); 
        });


        $app->get('/lastnews', function (Request $request, Response $response, array $args) use ($container)
        {

            // Read product
            $sql  = "SELECT * FROM news ORDER BY ID DESC LIMIT 5";
            $stmt = $this->db->prepare($sql);
            $stmt->execute();
            $news = $stmt->fetchAll();

            if (count($news))
            {
                $input = [
                    'status'  => 'success',
                    'message' => 'Read News Success',
                    'data'    => $news,
                ];
            }
            else
            {
                $input = [
                    'status'  => 'fail',
                    'message' => 'News Product Data',
                    'data'    => $news,
                ];
            }

            return $this->response->withJson($news);
        });

        $app->get('/news', function (Request $request, Response $response, array $args) use ($container)
        {

            // Read product
            $sql  = "SELECT * FROM news";
            $stmt = $this->db->prepare($sql);
            $stmt->execute();
            $news = $stmt->fetchAll();

            if (count($news))
            {
                $input = [
                    'status'  => 'success',
                    'message' => 'Read News Success',
                    'data'    => $news,
                ];
            }
            else
            {
                $input = [
                    'status'  => 'fail',
                    'message' => 'News Product Data',
                    'data'    => $news,
                ];
            }

            return $this->response->withJson($news);
        });


        // Get  News By ID (Method GET)
        $app->get('/news/{id}', function (Request $request, Response $response, array $args) use ($container)
        {
            $sql  = "SELECT * FROM news WHERE id='$args[id]'";
            $stmt = $this->db->prepare($sql);
            $stmt->execute();
            $count = $stmt->rowCount();
            $news = $stmt->fetchObject();
            if ($count)
            {
                $input = [
                    'status'  => 'success',
                    'message' => 'Read News Success',
                    'data'    => $news,
                ];
            }
            else
            {
                $input = [
                    'status'  => 'fail',
                    'message' => 'Empty News Data',
                    'data'    => '',
                ];
            }

            return $this->response->withJson($news);
        });


        $app->get('/timeDetail', function (Request $request, Response $response, array $args) use ($container)
        {

            $data = '[
               {
                 "No":"1",
                 "EmpID":"8888881",
                 "type":"ลงเวลาเข้าทำงาน",
                 "date":"23/09/2020",
                 "time":"02:46:37"
               },
               {
                 "No":"2",
                 "EmpID":"8888881",
                 "type":"ลงเวลาเข้าทำงาน",
                 "date":"23/09/2020",
                 "time":"02:41:47"
               },
               {
                 "No":"3",
                 "EmpID":"8888881",
                 "type":"ลงเวลาออกจากงาน",
                 "date":"23/09/2020",
                 "time":"02:32:44"
               },
               {
                 "No":"4",
                 "EmpID":"8888881",
                 "type":"ลงเวลาเข้าทำงาน",
                 "date":"23/09/2020",
                 "time":"02:14:03"
               },
               {
                 "No":"5",
                 "EmpID":"8888881",
                 "type":"ลงเวลาออกจากงาน",
                 "date":"23/09/2020",
                 "time":"02:13:01"
               },
               {
                "No":"6",
                "EmpID":"8888881",
                "type":"ลงเวลาเข้าทำงาน",
                "date":"24/09/2020",
                "time":"02:13:01"
              },
              {
                "No":"7",
                "EmpID":"8888881",
                "type":"ลงเวลาออกจากงาน",
                "date":"24/09/2020",
                "time":"02:13:01"
              },
              {
                "No":"8",
                "EmpID":"8888881",
                "type":"ลงเวลาเข้างาน",
                "date":"25/09/2020",
                "time":"02:13:01"
              },
              {
                "No":"9",
                "EmpID":"8888881",
                "type":"ลงเวลาเข้างาน",
                "date":"26/09/2020",
                "time":"02:13:01"
              },
              {
                "No":"10",
                "EmpID":"8888881",
                "type":"ลงเวลาออกจากงาน",
                "date":"27/09/2020",
                "time":"02:13:01"
              }
            ]';

            echo $data;

        });


        $app->get('/baacbranch', function (Request $request, Response $response, array $args) use ($container)
        {
            $data = '{
                "branch":[
                   {
                      "address":"แขวง เสนานิคม เขตจตุจักร กรุงเทพมหานคร 10220",
                      "id":"baac-01",
                      "image":"https://lh3.googleusercontent.com/tpBMFN5os8K-qXIHiAX5SZEmN5fCzIGrj9FdJtbZPUkC91ookSoY520NYn7fK5yqmh1L1m3F2SJA58v6Qps3JusdrxoFSwk6Ajv2K88",
                      "lat":"13.842797",
                      "lng":"100.5772309",
                      "name":"ธกส สำนักงานใหญ่",
                      "phone":"02-522-5568"
                   },
                   {
                      "address":"14 ถนน เทศบาลสงเคราะห์ แขวง ลาดยาว เขตจตุจักร กรุงเทพมหานคร 10900",
                      "id":"baac-02",
                      "image":"https://lh3.googleusercontent.com/gG1zKXcSmRyYWHwUn2Z0MITpdqwb52RAEp3uthG2J5Xl-4_Wz7_WmoM6T_TBg6Ut3L1eF-8XENO10sxVIFdQHilj8iRG29wROpSoug",
                      "lat":"13.841135",
                      "lng":"100.545355",
                      "name":"ธนาคาร ธกส. สาขาย่อยประชาชื่น",
                      "phone":"02-522-7415"
                   },
                   {
                      "address":"ซอย ลาดพร้าววังหิน 52 แขวง ลาดพร้าว เขตลาดพร้าว กรุงเทพมหานคร 10230",
                      "id":"baac-03",
                      "image":"https://lh3.googleusercontent.com/Iim0OVcAgg9vmXc5ADn9KvOQFplrMZ8hBTg2biiTtuWPy_r56cy4Byx1ROk6coGt7knQdmx_jO45VX1kiCJZ0QzEtS97AP_BYG4F2w",
                      "lat":"13.821531",
                      "lng":"100.591431",
                      "name":"ธนาคารธกส. วังหิน",
                      "phone":"02-522-7489"
                   },
                   {
                      "address":"481 ถนนลาดพร้าว-วังหิน ต.ลาดพร้าว อ.ลาดพร้าว กรุงเทพมหานคร 10230",
                      "id":"baac-04",
                      "image":"https://lh3.googleusercontent.com/XroZnqewSrO6KuvXM5hDHtjUJzUcRQLZYfCKs4jP44dKezRvNx58uxaqUKS4fQ2eXzG2TpJNJ1X2xtfBe7Prl5hSG_xjPEF1xLtFodM",
                      "lat":"13.821220",
                      "lng":"100.591206",
                      "name":"ธนาคารเพื่อการเกษตรและสหกรณ์การเกษตร สาขาย่อยโชคชัย 4",
                      "phone":"02-522-8749"
                   },
                   {
                      "address":"4 ถนน ประชาราษฎร์ สาย 2 แขวง บางซื่อ เขตบางซื่อ กรุงเทพมหานคร 10800",
                      "id":"baac-05",
                      "image":"https://lh3.googleusercontent.com/py7Qvqqoec1MB0dMKnGWn7ju9wET_dIneTb24U-ri8XAsECJnOaBoNmvfa51PIaC0rlsyQvQXvAK8RdLqpkhpkRSzmhNKqb-tY2_",
                      "lat":"13.806351",
                      "lng":"100.521866",
                      "name":"ธกส.สาขาย่อย บางโพ (จตุจักร)",
                      "phone":"+6625878820"
                   },
                   {
                    "address":"31 ถนนรัชดาภิเษก แขวง ดินแดง เขตดินแดง กรุงเทพมหานคร 10400",
                    "id":"baac-06",
                    "image":"https://lh3.googleusercontent.com/py7Qvqqoec1MB0dMKnGWn7ju9wET_dIneTb24U-ri8XAsECJnOaBoNmvfa51PIaC0rlsyQvQXvAK8RdLqpkhpkRSzmhNKqb-tY2_",
                    "lat":"13.757754",
                    "lng":"100.565112",
                    "name":"ธกส สาขาย่อย Mrt พระราม9",
                    "phone":"+6622799831"
                 }
                ]
             }';
            echo $data;
        });

    });

};
