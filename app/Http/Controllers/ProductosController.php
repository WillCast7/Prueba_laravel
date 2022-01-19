<?php

namespace App\Http\Controllers;

use App\Models\productos;
use Illuminate\Http\Request;

class ProductosController extends Controller{
    public function getAllProducts(){
        $products=productos::getAllProducts();
        return $products;
    }

    public function getProduct($id){
        $product=productos::getProduct($id);
        return $product;
    }
}
 