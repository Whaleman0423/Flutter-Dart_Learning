// Chapter 3 函數
/*
Dart 是物件導向的語言，即使是函數也是物件，
對應的類別為 Function。

函數也是物件表示可以將函數設定值給變數，
或將函數作為參數傳遞給另一個變數。

函數有時又被稱為方法，它們是等同的，
只是叫法上有差異。

宣告函數的格式如下：
[返回數值類型] 函數名稱 ([參數清單]){
  // 函數本體
  return expr;
}
*/

/*
每個函數都必須有返回值，
若不提供返回數值類型，則預設為 void。

函數名稱為識別符號，應當遵循識別符號命名規範。

參數清單中可能包含 0 到多個參數，這取決於實際狀況。

函數本體由變數宣告、敘述組成。

當函數存在返回值時，函數本體應當提供 return 敘述，
例如： return expr;

若函數返回值的類型為 void，則無須提供 return 敘述，等於 return null;。
*/

// 定義函數的範例
bool isEven_1(int x) {
  return x % 2 == 0 ? true : false;
}

/* 
上面的函數返回值的類型為 bool，接收一個 int 類型的參數，
函數本體由一個 return 敘述組成，返回敘述的運算式是一個條件運算式，
其返回值為布林值。
*/
// 對於只有一個運算式的函數，可以採用簡寫形式
bool isEven_2(int x) => x % 2 == 0 ? true : false;

// => expr; 是一個 {return expr}; 的簡寫形式，常稱為 「=>」 語法。
// => 與 ; 之間只能是運算式，而不能是敘述，
// 例如 不能是 if 敘述，但可以是條件運算式 (expr1 ? expr2 : expr3)。

// 函數包含兩種參數：必選參數和可選參數。
// 參數清單先列出必選參數，再列出可選參數。

// ch3.1 可選參數
/* 
可選參數分為具名引數和位置參數。
在參數清單中只能選一種作為可選參數，不可同時出現。

3.1.1 具名引數
定義函數時，使用大括號 ({}) 包裹可選參數清單，使用 {arg1, arg2,...} 的形式來定義具名引數
*/

// 範例：
// void findAll({int currentPage, int pageSize}) {...}
// 呼叫函數時，採用 arg1:value1, arg2:value2 的形式來傳遞參數。
// 即 先提供【參數名稱】，接著是 【:】 冒號，後面接著 【參數值】
// findAll(currentPage: 1, pageSize: 10)

// main() {
//   // 以下定義了一個包含必選參數和可選具名引數的函數
//   void message(String from, String content, {dynamic time, dynamic device}) {
//     // 呼叫該函數必須提供參數 from 和 content
//     // 因為無需做任何判斷即可直接列印這兩個參數
//     print('來自： $from, 正文： $content');

//     // 如果參數 time 不為空，則列印 time
//     if (time != null) {
//       print('時間： $time');
//     }
//     // 如果參數 device 不為空，則列印 device
//     if (device != null) {
//       print('發送裝置： $device');
//     }
//   }

//   // 呼叫 message 函數且提供兩個必要參數
//   message('job', 'hello');
//   print('\n\n');
//   // 呼叫 message 函數且提供可選參數 time
//   message('job', 'morning', time: DateTime.now());
//   print('\n\n');
//   // 呼叫 message 函數且提供可選參數 time 和 device
//   message('job', 'hello', time: DateTime.now(), device: 'phone');
// }

// 3.1.2 位置參數
// 使用中括號 ([]) 包裹可選參數清單來定義
// void message(String from, String content, [dynamic time, dynamic device]){...}

// void main() {
//   // 定義帶有可選位置參數 time 和 device 的函數
//   void message(String from, String content, [dynamic time, dynamic device]) {
//     print('來自 : $from, 正文 : $content');

//     if (time != null) {
//       print('時間 : $time');
//     }
//     if (device != null) {
//       print('發送裝置 : $device');
//     }
//   }

//   // 呼叫函數時不指定可選參數
//   message('jobs', 'hello');
//   print('\n');

//   // 呼叫函數時指定可選位置參數 time
//   message('job', 'bye', DateTime.now());
//   print('\n');

//   // 呼叫函數時指定可選位置參數 time 和 device
//   message('jobs', 'hello', DateTime.now(), 'phone');
// }

// 3.1.3 預設參數值
/*
在宣告可選參數時可以使用等號，為可選參數指定預設值，
預設值必須是編譯時常數，沒有指定預設值的參數將被設定值為 null。
*/

// main() {
//   // 為可選具名引數 device 提供預設值
//   void message(String from, String content,
//       {dynamic time, String device = 'phone'}) {
//     print('來自 : $from, 正文 : $content');

//     if (time != null) {
//       print('時間 : $time');
//     }

//     // 參數 device 始終會被列印
//     if (device != null) {
//       print('發送裝置 : $device');
//     }
//   }

//   // 呼叫函數時不指定可選參數
//   message('job', 'hello');
//   print('\n');
//   // 呼叫函數且指定可選具名引數 time
//   message('jobs', 'content', time: DateTime.now());
//   print('\n');
//   // 呼叫函數且指定可選具名引數 time 和 device
//   message('job', 'content', time: DateTime.now(), device: 'pc');
// }

// 位置參數提供預設值範例
// main() {
//   // 為可選位置參數 device 提供預設值
//   void message(String from, String content,
//       [dynamic time, String device = 'phone']) {
//     print('來自 : $from, 正文 : $content');

//     if (time != null) {
//       print('時間 : $time');
//     }

//     // 參數 device 始終會被列印
//     if (device != null) {
//       print('發送裝置 : $device');
//     }
//   }

//   // 呼叫函數且不指定可選參數
//   message('from', 'content');
//   print('\n');

//   // 呼叫函數且指定可選位置參數 time
//   message('job', 'content', DateTime.now());
//   print('\n');

//   // 呼叫函數且指定可選位置參數
//   message('from', 'content', DateTime.now(), 'pc');
// }

// 3.2 main 函數
/*
每個 Dart 程式都必須有一個 main 函數作為入口，
main 函數的返回值為 void
它有一個 List<String> 類型的可選參數。
*/

// // 帶有參數清單的 main 函數
// void main(List<String> args) {
//   // 列印所有參數值
//   print(args);

//   var len = args.length;
//   // 列印參數量
//   print('參數量 : $len');
// // 此 main 函數寫完後，儲存，至 Terminal 輸入：
// // dart dart_practice/ch3.dart first 2 dog
// // first、2、dog 三個參數會被 dart 檔案吃進去
// }

// 也可以省略參數 :
// void main(){
//   // 函數本體
// }

// 3.3 函數物件
/*
可以將函數作為參數傳遞給另一個函數，
下面將函數 printElement 傳遞給 List 類型的物件 list 的 forEach 函數。
*/
// void main() {
//   // 定義一個帶有 int 類型參數的函數
//   void printElement(int element) {
//     // 列印傳入的參數值
//     print(element);
//   }

//   // 定義一個 List 類型的物件並賦初值
//   var list = [1, 2, 3];

//   //將 printElement 函數作為參數傳遞給 List 物件的 forEach 函數
//   // forEach 函數會按疊代順序將函數 printElement 應用於 List 集合的每個元素
//   list.forEach(printElement);
// }

// 也可以將函數設定值給一個變數
// void main() {
//   void printElement(int element) {
//     print(element);
//   }

//   // 將函數 printElement 設定值給變數 show
//   var show = printElement;

//   // 像執行函數一樣使用變數 show
//   show(12);
// }

// 3.4 匿名函數
/*
大多數方法都是有名字的，例如: main 或 printElement。

也可以創建一個沒有名字的函數，稱為匿名函數。

匿名函數常以回乎函數或另一個函數的形式出現。

匿名函數看起來與命名函數類似，在括號之間可以定義參數，
參數之間用逗號分隔，後面大括號中的內容則為函數本體，也可以有返回值。

([類型] [參數, 參數, ...]){
  // 函數本體;
}
*/

/* 
匿名函數常用在集合疊代中，
下面的程式定義了只有一個參數 item 且沒有參數類型的匿名函數。

List 中的每個元素都會呼叫這個函數，
函數本體列印元素在集合中的索引和值。
*/

// void main() {
//   // 定義一個清單
//   var list = ['apples', 'bannas', 'oranges'];

//   // 像 forEach 函數提供匿名函數
//   list.forEach((item) {
//     print('${list.indexOf(item)}: $item');
//   });
//   print('\n');
//   // 若函數本體只有一行敘述，可使用 => 語法
//   list.forEach((item) => print('${list.indexOf(item)}: $item'));
// }

/* 
匿名函數也可以作為另一個函數的返回物件，
返回敘述 return (num r) => 2 * pi * r; 中的返回值就是匿名函數。
*/

// void main() {
//   // 定義一個返回數值類型為 Function 的函數
//   Function perimeter() {
//     var pi = 3.14;

//     // return 關鍵字後面跟著的是一個匿名函數
//     return (num r) => 2 * pi * r;
//   }

//   // 將函數設定值給變數
//   var per = perimeter();
//   var r = 9;
//   var l = per(r);
//   print('圓的周長: $l');
// }

// 3.5 語法作用域
/* 
Dart 是有語法作用域的語言，變數的作用域在寫程式的時候就確定了。

大括號內定義的變數只能在大括號內並存取，
在大括號內可以存取大括號外的變數，與 Java 類似。
*/

// 巢狀結構函數中變數在多個作用域中使用的範例：

// 定義一個頂層變數
// String topLevel = 'top veriable';

// void main() {
//   // 在 main 函數中定義變數
//   var insideMain = 'insideMain variable';
//   void myFunction() {
//     // 在 myFunction 函數中定義變數
//     var insideFunction = 'insideFunction variable';
//     void nestedFunction() {
//       // 在巢狀結構函數中定義變數
//       var insideNestedFunction = 'insideNestedFunction variable';
//       print('$topLevel');
//       print('$insideMain');
//       print('$insideFunction');
//       print('$insideNestedFunction');
//     }

//     nestedFunction();
//   }

//   myFunction();
// }
// 注意： nestedFunction() 函數可以存取包括頂層變數在內的所有變數

// 語法閉包
/*
語法閉包是一個函數物件，即使函數物件的呼叫在它原始作用域之外，
依然能夠存取在它詞法作用域內的變數。

函數可以封閉定義到它作用域內的變數。
*/

// 函數 makeAdder() 捕捉了變數 addBy。
// 無論函數在什麼時候返回，它都可以使用捕捉的 addBy 變數。
// void main() {
//   // 返回一個函數，該函數的參數將與 addBy 相加
//   Function makeAdder(num addBy) {
//     return (num i) => addBy + i;
//   }

//   // 生成加 2 的函數
//   var add2 = makeAdder(2);

//   // 生成加 4 的函數
//   var add4 = makeAdder(4);

//   print(add2(3));

//   print('\n');

//   print(add4(3));

//   print('\n');

//   print(makeAdder(10)(90));
// }

// 3.7 函數相等性測試
/*
函數相等性測試用來判斷 兩個函數是否是同一個物件。

頂層函數、靜態方法和實例方法相等性的測試如下:
*/

// // 定義頂層函數
// void foo() {}

// // 定義一個類別
// class A {
//   // 定義靜態方法
//   static void bar() {}

//   // 定義實例方法
//   void baz() {}
// }

// void main() {
//   var x;
//   x = foo;

//   // 比較頂層函數是否相等
//   print('比較頂層函數是否相等 ${foo == x}');

//   // 比較靜態方法是否相等
//   x = A.bar;
//   print('比較靜態方法是否相等 : ${A.bar == x}');

//   // A 的實例 #1
//   var v = A();

//   // A 的實例 #2
//   var w = A();

//   var y = w;

//   x = w.baz;
//   // 這兩個閉包引用了相同的實例物件，因此他們相等
//   print(y.baz == x);

//   // 這兩個閉包引用了不同的實例物件，因此它們不相等
//   print(v.baz == w.baz);
// }

// 3.8 返回值
/* 
所有的函數都有返回值，返回值本質上是物件。

返回數值類型可以是內建類型也可以是自訂類型，返回數值類型放在函數名稱前面。
*/

// void main() {
//   // 返回數值類型為 num
//   num area(num pi, num r) {
//     //返回敘述
//     return pi * r * r;
//   }

//   print('圓面積為 : ${area(3.14, 6)}');
// }

/* 
當函數名稱前，有類型修飾時，函數本體最後必須提供 return 敘述。

當函數名稱前，沒有類型修飾，且未提供 return 敘述時，最後一行預設為執行 return null;。
*/
// void main() {
//   // 定義一個沒有提供返回數值類型的函數
//   foo() {
//     // 函數本體未提供 return 敘述
//     var a;
//   }

//   // 判斷函數 foo 的返回值是否為 null
//   print('未提供 return 敘述的函數返回值是否為 null : ${foo() == null}');
// }

// 3.9 回呼函數
/*
回乎函數是指作為參數傳遞的函數，
回乎函數還會獲得原函數提供的值。
*/

void main() {
  // 定義 printProgress 函數，將回呼函數 callback 作為可選參數
  void printProgress({callback}) {
    for (int progress = 0; progress <= 10; progress++) {
      // 判斷回呼函數是否為空
      if (callback != null) {
        // 若提供則呼叫回乎函數並傳遞循環變數 progress
        callback(progress);
      }
    }
  }

  // 呼叫 printProgress 函數並提供匿名回乎函數
  printProgress(callback: (int progress) {
    print('列印進度 : $progress%');
  });
}
// Chapter 3 完結