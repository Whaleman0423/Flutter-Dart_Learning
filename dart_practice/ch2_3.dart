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

/* 
const 修飾的變數應在宣告處設定值
且值必須為編譯時常數

用 const 修飾變數時可以直接使用常數為其設定值，
也可以使用由 const 修飾的其他變數組成的運算式來設定值
*/
// void main() {
//   // 創建常數
//   const pi = 3.14;
//   const r = 6;
//   // 常數的運算式可由其他常數組成
//   const l = 2 * pi * r;

//   // const 不僅用於定義常數，也可以用來創建常數值
//   var ls = const [];
//   // 沒有使用 final 或 const 修飾的變數，其值可以被修改
//   ls = [1, 2, 3];
//   print(ls);
// }

// 2.4 數字
// int 整數
// double 浮點數

// // 整數是不帶小數點的數字，定義時可以用 int 或 num 修飾變數。
// void main() {
//   // 定義 int 型數字
//   int i = 1;
//   var j = 321321;
//   num k = 2;
//   print('k 的執行時期類型：${k.runtimeType}');

//   // 必要時，整數可以自動轉為浮點數
//   // 等於 double l = 3.0
//   double l = 3;
//   print('l：$l');
// }

// 2.5 字串
// void main() {
// // 使用單引號創建字串
//   var s1 = 'Today is sunny.';
// // 使用雙引號創建字串
//   var s2 = "Today is sunny.";

// // 也可以使用三重單引號或三重雙引號
// // 使用三重單引號創建多行字串
//   var s3 = '''Today
//             is
//             sunny.''';
// // 使用三重雙引號創建多行字串
//   var s4 = """Today
//             is
//             sunny.""";
// }

/*
插值操作可以將運算式的值放入字串中
使用格式:
${expr}，expr 代表的是運算式

若運算式是識別符號則可以省略{}
使用格式:
$Identifier，Identifier 代表的是識別符號

插值實際上是透過呼叫物件的 toString() 方法來獲取該物件的字串形式
*/
// void main() {
//   var pi = 3.14;
//   var r = 6;
//   var s = 'I am a boy.';

//   // 插值運算式
//   print('字串 s :$s');
//   print('圓的周長 L:${2 * pi * r}');

//   // 可以透過多個相鄰的字串組成一個新的字串，也可以使用 "+" 運算子
//   // 將相鄰字串拼接在一起
//   var s5 = 'Today'
//       'is'
//       'sunny.';
//   // 透過使用 "+" 運算子將字串拼接在一起
//   var s6 = 'Today' + 'is' + 'sunny.';
//   var s7 = 'Today' 'is' 'sunny.';
//   print(s5);
//   print(s7);
// }

// 2.6 布林
/*
為了表示布林值，
Dart 中有一個 bool 類型，
只有兩個物件是 bool 類型:
true 和 false。
*/

// bool isEmpty = true;
// bool isNull = false;

// 不能為 bool 類型的變數設定值 true 和 false 以外的常數
// 否則會編譯錯誤

// void main() {
//   // 檢查是否為空字串
//   var name = '';
//   print(name.isEmpty);

//   // 檢查是否小於或等於 0
//   var topPoint = 0;
//   print(topPoint <= 0);

//   // 檢查是否為 null
//   var label;
//   print(label == null);

//   //檢查是否為 NaN
//   var y = 0 / 0;
//   print(y.isNaN);

// // 不能使用 if(非布林值) 或 assert(非布林值) 這樣的程式檢查布林值
//   bool A = true;
//   print(A == false);
// }

// 2.7 List 集合
/* 
List 集合中的元素是有序的，
並且可以重複出現相同的元素。

List 集合中可以存放任意類型的物件，
也可以透過 "<>" 符號指定泛型，
確保存入該集合的物件都是泛型所指定的單一類型。
*/

// void main() {
//   var list_A = [1, 2, 3];
//   List list_B = [1, 2, 3, 4];
//   print(list_A);
//   print(list_B);

//   // 顯性指定泛型為 int
//   List<int> list_C = [1, 2, 3];
//   print(list_C);

//   /* 若初始值非同一類型，
//   則 List 集合中的元素為動態類型，
//   即任一類型都可放進該集合。
//   */
//   var list_D = [1, 2, 'abc'];
//   list_D.add(33);
//   list_D.add('value');
//   list_D.add(true);
//   print(list_D);
// }

// 2.7.1 常用屬性
/*
first 返回 List 集合中的第一個元素

last 返回 List 集合中的最後一個元素

length 返回 List 集合中元素的數量，返回值為 int

isEmpty 判斷 List 集合中是否有元素，若無則回傳 true；否則返回 false

iterator 返回疊代器 (Iterator) 物件，疊代器物件用於遍歷集合，該屬性是從 Iterator 類別繼承而來
*/
// void main() {
//   var list = [63, 70.3, 'abc', true];

//   // 列印第一個元素
//   print('第一個元素:${list.first}');

//   // 列印最後一個元素
//   print('最後一個元素:${list.last}');

//   // 列印集合的長度
//   print('List 集合的長度:${list.length}');

//   // 列印執行時期的類型
//   print('執行時期的類型:${list.runtimeType}');

//   // 列印疊代器的類型
//   print('疊代器的類型:${list.iterator.runtimeType}');
// }

// 2.7.2 常用方法
