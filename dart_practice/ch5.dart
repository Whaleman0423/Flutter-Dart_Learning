// Chapter 05 流程控制敘述

// 5.1 分支敘述

/*
分支敘述又稱條件陳述式，
條件陳述式使得部分程式區塊根據運算式的值有選擇地執行。

Dart 語言提供了 if 和 switch 兩種分支敘述。
*/

/*
5.1.1 if 敘述
具體來說分支敘述由選擇結構組成，
if 敘述啟動的選擇結構包括 if、if-else、else-if
*/

/* if 結構
if 結構包含條件運算式和敘述區塊，
當條件運算式為 true 時執行敘述區塊，
否則執行 if 結構後面的敘述。

通常來說敘述區塊由大括號 {} 包裹，
若 if 結構中的敘述區塊只有一行敘述，則可以省略大括號。
*/

/*
if (條件運算式){
  // 敘述區塊
}
*/

// void main() {
//   var x = true, y = 10;
//   if (x) {
//     // 此處 x 為真，敘述體得到執行
//     print('條件 x 為 $x');
//   }

//   if (!x) {
//     // 此處 !x 為假，敘述體得不到執行
//     print('條件 !x 為 $x, if 敘述體得到執行。');
//   }

//   // 此處省略大括號
//   if (y <= 10) {
//     // 條件 y <= 10 為真，敘述體得到執行
//     print('條件 y <= 10 為 ${y <= 10}');
//   }
// }

/*
if-else 結構
在 if 結構中，只有條件運算式為 true 時提供對應的處裡敘述區塊。

無論條件運算式為 true 還是 flase 都須進行對應處理，
此時可以使用 if-else 結構。

if (條件運算式) {
  // 敘述區塊 1
} else {
  // 敘述區塊 2 
}

當程式執行到 if 敘述時，會先判斷條件運算式，
若值為 true，則執行敘述區塊 1，
然後跳過 else 敘述區塊，繼續執行後續敘述。

若條件運算式值為 false，則忽略敘述區塊 1，
直接執行敘述區塊 2，然後繼續執行後續敘述。
*/

// void main() {
//   var x = true;
//   if (!x) {
//     // 條件 !x 為真時，if 敘述區塊得到執行
//     print('if !x: ${!x}');
//   } else {
//     // 條件 !x 為假時，else 敘述區塊得到執行
//     print('else !x: ${!x}');
//   }
// }

// else-if 結構
/*
else-if 結構是 if-else 結構的多層巢狀結構形式，
它會在多個分支中執行一個敘述區塊，
其他分支將不會得到執行，
所以這種結構常用於有多種判斷結果的分支中。
*/

/*
if (條件運算式 1) {
  // 敘述區塊 1
} else if (條件運算式 2) {
  // 敘述區塊 2 
} 
...
} else if (條件運算式 n) {
  // 敘述區塊 n
} else {
  // 敘述區塊 n+1
}
*/

// void main() {
//   var x = true, y = 10;
//   if (!x) {
//     // 條件 !x 為假，if 敘述區塊不會執行
//     print('條件 x 為 $x');
//   } else if (y <= 10) {
//     // 若條件 y <= 10 為真，則 else if 敘述區塊得到執行
//     print('條件 y<= 10 為 ${y <= 10}');
//   } else {
//     // 當所有條件都為假時，else 敘述區塊才會執行
//     print('else !x: ${!x}。');
//   }
// }

// 5.1.2 switch 敘述
/*
可以使用 switch 敘述選擇要執行的多個程式區塊中程式區塊

switch (expr) {
  case 值 1:
    // 敘述區塊 1
    break;
  
  case 值 2:
    // 敘述區塊 2
    break;
  ...
  case 值 n:
    // 敘述區塊 n
    break;
  default:
    // 敘述區塊 n+1
}
*/

/*
首先設定運算式 expr，通常是一個變數。

隨後運算式的值會與結構中的每個 case 的值做比較。

若存在匹配，則與該 case 子句連結的程式區塊會被執行。
若 case 子句中沒有與 expr 匹配的值，則會執行 default 子句的敘述區塊，
然後跳出 switch 結構。
*/

/*
switch 敘述使用 == 來比較整數、字串或編譯時常數，
比較的兩個物件是同一個類別的實例且沒有覆寫 == 運算子。

每個不可為空的 case 子句必須包含一個 break 敘述。
當沒有匹配的子句時，可以使用 default 子句匹配這種情況。
*/
// void main() {
//   var color = 'Red';
//   switch (color) {
//     case 'Green':
//       print('color 值為 Green');
//       break;
//     case 'Orange':
//       print('color 值為 Orange');
//       break;
//     case 'Red':
//       print('color 值為 Red');
//       break;
//     default:
//       print('color 值未匹配');
//   }
// }

/*
Dart 語言支援 case 子句的內容為空，
這種情況稱為貫穿。

下例中值為 Orange 的 case 子句內容為空，它會造成貫穿。

當傳入變數值為 Orange 時，程式會繼續執行與它相鄰的值為 Red 的 case 子句。
*/
// void main() {
//   var color = 'Orange';
//   switch (color) {
//     case 'Green':
//       print('color 值為 Green');
//       break;
//     case 'Orange':
//     // 空敘述貫穿
//     case 'Red':
//       // color 值為 Orange 和 Red 都會被執行
//       print('color 值為 Red 或 Orange');
//       break;
//     default:
//       print('color 值未匹配');
//   }
// }

/*
不可為空 case 子句實現貫穿可以透過 continue 敘述和標籤來完成。

下例中，匹配到值為 Green 的 case 子句時，
不僅會執行該子句的程式區塊，
還會執行值為 Red 的 case 子句的程式區塊。
*/

// void main() {
//   var color = 'Green';
//   switch (color) {
//     case 'Green':
//       print('color 值為 Green');
//       // 繼續執行標籤為 red 的 case 子句
//       continue red;
//     case 'Orange':
//       print('color 值為 Orange');
//       break;
//     // 標籤 red，它代表了 case 值為 Red 子句
//     red:
//     case 'Red':
//       // color 值為 Green 和 Red 都會執行
//       print('color 值為 Red');
//       break;
//     default:
//       print('color 值未被匹配');

//   }
// }
// 每個 case 子句都可以有區域變數，且僅在該 case 子句內有效

// 5.2 迴圈敘述

/*
迴圈敘述能夠根據迴圈條件使程式碼重複執行。

Dart 支援 3 種迴圈結構: for、while 和 do-while。
*/

// 5.2.1 for 敘述

/*
for 敘述是一種應用廣泛、功能最強的迴圈敘述。

for(運算式 1, 運算式 2, 運算式 3) {
  // 迴圈敘述區塊
}

運算式 1 是初始化敘述，用於初始化迴圈變數和其他變數。
運算式 2 是迴圈條件，
運算式 3 用於更新迴圈變數，使迴圈變數趨近於某個值，直到使迴圈條件變為 false。

開始 for 迴圈時，會執行運算式 1 初始化迴圈變數，
運算式 1 只會執行一次。
然後執行運算式 2，判斷迴圈條件是否滿足，
若滿足，則繼續執行迴圈本體。
執行完成後繼續執行運算式 3，更新迴圈變數，
然後接著再判斷迴圈條件。

如此反覆，直到迴圈條件不滿足時，跳出迴圈。
*/

void main() {
  for (var i = 0; i < 5; i++) {
    // 此處 i 的出值為 0，所以使用 i+1 保證其與實際迴圈次數一致
    print('第 ${i + 1} 次迴圈。');
  }
}
