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

main() {
  // 以下定義了一個包含必選參數和可選具名引數的函數
  void message(String from, String content, {dynamic time, dynamic device}) {
    // 呼叫該函數必須提供參數 from 和 content
    // 因為無需做任何判斷即可直接列印這兩個參數
    print('來自： $from, 正文： $content');

    // 如果參數 time 不為空，則列印 time
    if (time != null) {
      print('時間： $time');
    }
    // 如果參數 device 不為空，則列印 device
    if (device != null) {
      print('發送裝置： $device');
    }
  }

  // 呼叫 message 函數且提供兩個必要參數
  message('job', 'hello');

  // 呼叫 message 函數且提供可選參數 time
  message('job', 'hello', time: DateTime.now());

  // 呼叫 message 函數且提供可選參數 time 和 device
  message('job', 'hello', time: DateTime.now(), device: 'phone');
}
