<?php


//step 1.
//step 1.
//step 1.
$db_link = mysqli_connect("localhost","root","1234");
//@ 可隱藏錯誤的提示顯示

//函式方式的連線 主機,帳號,密碼
//密碼錯誤  Access denied for user 'root'@'localhost' 
//print_r( mysqli_connect("localhost","root","1234") );
//print_r($db_link);
if($db_link){
    //存在 連線成功
    echo '連線成功';
}else{
    //錯誤訊息，變數$db_link 不存在 連線失敗
    die('連線失敗');
    //中止往下執行
}



//step 2.
//step 2.
//step 2.
//設定編碼方式
mysqli_query($db_link,"SET NAMES utf8");

//連線資料庫 class
//print_r(mysqli_select_db($db_link,"class"));


//step 3.
//step 3.
//step 3.
if( mysqli_select_db($db_link,"class") ){
    echo '連資料庫成功';
}else{
    die('連資料庫失敗');
}


//step 4.
//step 4.
//step 4.
//查詢資料
$sql = "SELECT * FROM `students`"; //參考phpmyadmin

//獲得連線物件,包含欄位數量與筆數
//print_r( mysqli_query($db_link,$sql) );
$result = mysqli_query($db_link,$sql);


//step 5.
//step 5.
//step 5.
//取得資料集 assoc 採用欄位方式
$row = mysqli_fetch_assoc($result);

//print_r($row);
//顯示單一欄位方式
echo '您查到第一筆住址是：'.$row['cAddr'];
echo '您查到第一筆生日是：'.$row['cBirthday'];

//echo '程式往下執行...';
?>