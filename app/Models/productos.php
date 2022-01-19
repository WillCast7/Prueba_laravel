<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class productos extends Model{
    use HasFactory;
        
    static public function getAllProducts(){
        $productos=DB::select("SELECT product_id,
                                    product_name,
                                    product_price,
                                    product_variations,
                                    product_category,
                                    fcreation
                                FROM products");    
        return $productos;
     }

    static public function getProduct($id){
        $producto=DB::select("SELECT product_id,
                                    product_name,
                                    product_price,
                                    product_variations,
                                    product_category,
                                    fcreation
                                FROM products
                                WHERE product_id={$id}");    
        return $producto;
     }
}
