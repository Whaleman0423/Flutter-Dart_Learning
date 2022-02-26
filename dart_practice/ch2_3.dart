// //ch2.3
// void main() {
//   String catName = "屁屁";
//   print('變數 catName 執行時期類型為 ${catName.runtimeType}');
// }

// void main() {
//   dynamic dogName = '傻傻樂';
//   print('變數 dogName 執行時期類型為 ${dogName.runtimeType}');
// }

// //2.3.1 預設值
// // 無論宣告類型是什麼，未初始化的變數都擁有一個預設值 null，數字無法執行
// void main() {
//   int sum;
//   print(sum == null);
// }
// // 上面的無法執行!!

// 2.3.2 const 和 final
/*
如果在設定值後不需要改變變數的值，那麼可以使用 const 或 final 來修飾變數
const 和 final 都可以替代 var
被修飾的變數的類型由設定值物件的類型決定
也可以放在確定的類型前，共同修飾變數
*/
// final [資料類型] 變數名稱 = 初值
// const [資料類型] 變數名稱 = 初值

// void main(){
//   // 不指定類型，設定值的類型作為推斷類型的依據，這裡為 String 類型
//   final name = '我是帥哥';
//   //可以放在確定的類型前，共同修飾變數
//   final String nickName = '天下';
//   // final 只能設定一次值，且不能修改
//   // 錯誤的
//   // name = '狗';
// }

