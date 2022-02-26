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

/* 
運算符號[int index] : 返回 List 集合中指定索引處的物件

運算符號[int index] = value : 將 List 集合中指定索引處 index 的值替換為 value

add(value) : 將 value 增加到 List 集合的尾端，並使 List 集合長度增加 1

insert(int index, element) : 在 List 集合指定位置 index 插入元素 element

remove(Object value) : 從 List 集合中刪除第一次出現 value 值的元素

removeAt(int index) : 移除 List 集合指定位置的元素，並返回該元素

clear() : 移除 List 集合中所有的元素，並將 List 集合的長度歸 0 

sublist(int start, [int end]) : 返回 List 集合中位置 start 和 end 之間的元素集合，包括 start，但不包括 end

indexOf(element, [int start = 0]) : 按順序尋找 List 集合中的元素，返回第一次出現指定元素 element 的索引。若無集合該元素，則返回 -1；可選參數 start 表示從 List 集合中指定索引處開始尋找，一直找到集合的最後一個元素，其預設值為 0

## List 使用已 0 為基礎的索引，其中 0 為第一個元素的索引，list.length - 1 是最後一個元素的索引
*/

// void main() {
//   var list = [63, 70.9, 'abc', true, 'abc'];
//   print('操作前的 list : $list');

//   // 列印索引為 2 的元素，即集合中的第 3 個元素
//   print('元素 list[2]: ${list[2]}');

//   // 修改 list[1] 中的元素
//   print('修改 list 中索引 1 的元素為 false');
//   list[1] = false;

//   // 列印修改後 list[1] 的元素
//   print('元素 list[1]: ${list[1]}');

//   // 在 list 增加元素
//   list.add('new element');
//   print('新增元素後的 list: $list');

//   // 向 list 索引 1 處插入元素
//   list.insert(1, 'insert element');
//   print('插入新元素後的 list : $list');

//   // 在 list 中尋找元素，返回其第一次出現的索引
//   print('abc 在 list 中第一次出現的索引: ${list.indexOf('abc')}');

//   // 返回 list 索引從 2 到 5 的元素集合
//   print('list 中索引 2 到 5 的元素: ${list.sublist(2, 5)}');

//   // 在 list 中尋找元素，刪除第一次出現 abc 的元素
//   print('list 中移除 abc 元素: ${list.remove('abc')}');

//   // 移除元素後的 list
//   print('移除元素後的 list : $list');

//   // 清除 list 中的元素
//   list.clear();
//   print('清除所有 list 元素後的 list : $list');
// }

// void main() {
// // 若需要創建一個包含編譯時常數的 List，可以在 List 字面量前增加 const
//   var constantList = const [1, 2, 3];

// // 需要創建固定長度的 List 集合，需使用建構函數指定
//   // var list = List(6); // 好像不行用了，被改了
//   //改用
//   var list = List.filled(6, null);
//   print(list);
// }

// 2.8 Set 集合
/*
Set 集合中的元素無序且唯一，即不可重複。
該子類別依據元素的插入順序進行疊代，
*/

// void main() {
//   // 採用 Set 字面量來創建 Set 集合的程式
//   var popo = {'apple', 'people', 'couple', 'tuple', 'oppo'};
//   // Dart 推斷 popo 變數是一個 Set<String> 類型的集合，
//   // 只可以在該集合增加 String 類型的物件

//   // 可以在 {} 前面加上泛型參數來創建一個空的 Set 集合，也可以將 {} 設定值給宣告類型為 Set 的變數
//   var cats = <String>{};
//   Set<String> dogs = {};

//   // 可以在 Set 字面量前增加 const 關鍵字創建一個 Set 類型的編譯時參數
//   final constantSet = const {'elephant', 'bird', 'dog', 'cat', 'wolf'};
// }

// 2.8.1 常用屬性
// length: 返回 Set 集合中元素的數量，返回值為 int 類型

// iterator: 返回疊代器 (Iterator) 物件，疊代器物件用於遍歷集合

// isEmpty: 判斷 Set 集合中是否有元素，若有則返回 false；反之則 true

// void main() {
//   var set = {'abc', 1, true};

//   // 列印 Set 結合的長度
//   print('Set 集合的長度: ${set.length}');

//   // 列印疊代器的類型
//   print('疊代器的類型: ${set.iterator.runtimeType}');

//   // 判斷 Set 集合是否為空
//   print('Set 集合是否為空: ${set.isEmpty}');
// }

// 2.8.2 常用方法

// add(value) : 將元素增加到 Set 集合

// clear() : 清除 Set 集合中的所有元素

// remove(Object value) : 移除 Set 集合中的指定元素

// void main() {
//   var set = {'abc', 1, true};

//   // 列印原 Set 集合
//   print('原 Set 集合: $set');

//   // 增加元素到 Set 集合
//   set.add(99);
//   print('增加元素後的 Set 集合: $set');

//   // 移除 Set 集合中的元素
//   set.remove(true);
//   print('移除元素後的 Set 集合: $set');

//   // 清除 Set 集合中的所有元素
//   set.clear();
//   print('清除 Set 集合中的所有元素後，Set 集合: $set');
// }

// 2.9 Map 集合
/*
Map 集合是一種將 鍵(key) 與 值(value) 相連結的物件，
key 和 value 可以是任何物件。
key 不可重複；但 value 可以重複

Dart 支援使用 Map 字面量和 Map 類型來建構 Map 物件
*/

// void main() {
//   // 鍵和值都是 String 類型
//   var gifts = {
//     // Key : Value
//     'first': 'desktop',
//     'second': 'computer',
//     'fifth': 'notebook'
//   };
//   // 鍵都是 int 型，值是字串型
//   var names = {2: 'Tom', 10: 'Amy', 1: 'Jack'};

//   // Dart 將名為 gifts 的變數的類型推斷為 Map<String, String>，將 names 推斷為 Map<int,String>
// }

// 也可以使用 Map 建構函數來創建 Map
// void main() {
//   // 用建構函數 Map() 建構 Map 物件
//   var gifts1 = Map();
//   gifts1['first'] = 'desktop';
//   gifts1['second'] = 'computer';
//   gifts1['fifth'] = 'notebook';

//   var names = Map();
//   names[2] = 'Tom';
//   names[10] = 'Amy';
//   names[1] = 'Jack';
// }

// 2.9.1 常用屬性

// length : 返回 Map 集合中的鍵值對數量

// keys : 返回 Map 集合中的所有鍵 (key)，返回值是可疊代物件

// values : 返回 Map 集合中的所有值 (value)，返回值是可疊代物件

// void main() {
//   var map = {1: 'dooooooog', 'second': 'caaaaaaaaat', 'age': 32};

//   // 列印 Map 集合的鍵值對數量
//   print('Map 集合的鍵值對數量: ${map.length}');

//   // 返回 Map 集合中的所有鍵
//   print('Map 集合中的所有鍵: ${map.keys}');

//   // 返回 Map 集合中的所有值
//   print('Map 集合中的所有值: ${map.values}');
// }

// 2.9.2 常用方法

// 運算符號[Object key] : 獲取指定 key 的值，如果該 key 不存在，則返回 null

// 運算符號[key] = value : 將值 (value) 與指定的鍵 (key) 相連接，若該鍵存在於 Map 集合中，則將對應值修改為 value。若對應鍵不存在，則新增鍵與值到 Map 集合

// containsKey(Object key) : 判斷 Map 集合中是否包含指定的鍵，若包含則返回 true；反之則返回 false

// containsValue(Object value) : 判斷 Map 集合是否包含指定的值，若包含則返回 true；反之則返回 false

// void main() {
//   var map = {1: 'dooooog', 'second': 'gash', 'age': 3};

//   // 列印原 Map
//   print('原 Map: $map');

//   // 獲取 Map 集合中鍵為 age 的值
//   print('Map 集合中鍵為 age 的值: ${map['age']}');

//   // 在 Map 集合中增加鍵值對
//   map['name'] = 'Bob';
//   print('增加鍵值對後的 Map : $map');

//   // 修改 Map 集合中鍵為 name 的值
//   map['name'] = 'Jobs';
//   print('修改鍵 name 的值後的 Map : $map');

//   // 判斷 Map 集合中是否包含鍵 age
//   print('Map 集合中是否包含鍵 age : ${map.containsKey('age')}');

//   // 判斷 Map 集合中是否包含值 32
//   print('Map 集合是否包含值 32 : ${map.containsValue(32)}');

//   // 在 Map 字面量前增加 const 關鍵字可以創鍵 Map 類型的編譯時常數
//   final constantMap = const {2: "helmet", 10: "scooter", 18: "car"};
// }

// 2.10 符文

/*
在 Dart 中，符文對應的類型為 Runes。
Unicode 為世界上所有書寫系統中使用的每個字母、數字和符號定義了唯一的數值。
由於 Dart 字串是 UTF-16 程序單元的序列，
因此在字串中表示 Unicode 程式點 需要特殊的語法。

表示 Unicode 程式點的常用形式是: \uXXXX，
其中 XXXX 是 4 位十六進位數。

例如: 心臟字元為 \u2665。

要指定多於或少於 4 個十六進位數字，
需將值放在大括號中。

例如:
笑的表情符號是 \u{1f600}。

程式點 (code point) : 程式點是指編碼字元集中，
字元對應的數字有效範圍從 \u0000 到 \u10FFFF，
其中 \u0000 到 \uFFFF 為基底字元，
\u10000 到 \u10FFFF 為增補字元。

程式單元 (code unit) : 程式單元對程式點進行編碼得到的 1 或 2 個 16 位元序列。
其中基底字元的程式點直接用一個相同值的程式單元表示，
增補字元的程式點用兩個程式單元進行編碼。

String 類別有幾個屬性可用於提取符文資訊，
使用 codeUnits 屬性返回 16 位元程式單元，
使用 runes 屬性獲取字串的符文
*/

// void main() {
//   // 創建符文字串
//   var clapping = '\u{1f44f}';

//   // 列印符文
//   print('符文字串 : $clapping');

//   // 返回此字串的 UTF-16 程式單元
//   print('此字串的 UTF-16 程式單元 : ${clapping.codeUnits}');

//   // 返回此字串的 Unicode 程式點
//   print('此字串的程式點: ${clapping.runes.toList()}');

//   // 建構 Runes 物件
//   Runes input =
//       Runes('\u2665 \u{1f605} \u{1f60e} \u{1f47b} \u{1f596} \u{1f44d}');

//   // 將 Runes 物件轉為 String 並列印
//   print('將 Runes 物件轉為 String: ${String.fromCharCodes(input)}');
// }

// Chapter 2 結束
