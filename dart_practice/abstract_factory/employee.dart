/**
 * 練習
 * clean code 
 * Chapter 3
 * p.45
 * 定義抽象物件
 * 書中不是以dart的範例
 * 因此有額外轉成dart
 * 
 * 邏輯:
 * 1. 定義一個 Money 類
 * 2. 定義一個抽象類別 Employee
 * 3. 定義一個 EmployeeRecord 類，用於存儲員工資訊
 * 4. 自定義異常 InvalidEmployeeType
 * 5. 定義一個接口 EmployeeFactory
 * 6. 定義一個實現 EmployeeFactory 接口的類
 * 7. 定義Employee抽象類的一個具體實現，CommissionedEmployee
 * 8. 定義Employee抽象類的一個具體實現，HourlyEmployee
 * 9. 定義Employee抽象類的一個具體實現，SalariedEmployee
 * 10. 主程式, 測試使用
 */

// 定義一個 Money 類，此處簡單示範，具體實現可能需要更多的細節
class Money {
  final double amount;
  Money(this.amount);
}

// 定義一個抽象類別 Employee
abstract class Employee {
  bool isPayDay();
  Money calculatePay();
  void deliverPay(Money pay);
}

// 定義一個 EmployeeRecord 類，用於存儲員工資訊
class EmployeeRecord {
  final String type;
  EmployeeRecord(this.type);
}

// 自定義異常
class InvalidEmployeeType implements Exception {
  final String message;
  InvalidEmployeeType(this.message);
}

// 定義一個接口 EmployeeFactory
abstract class EmployeeFactory {
  Employee makeEmployee(EmployeeRecord r);
}

// 定義一個實現 EmployeeFactory 接口的類
class EmployeeFactoryImpl implements EmployeeFactory {
  @override
  Employee makeEmployee(EmployeeRecord r) {
    switch (r.type) {
      case 'COMMISSIONED':
        return CommissionedEmployee(r);
      case 'HOURLY':
        return HourlyEmployee(r);
      case 'SALARIED':
        return SalariedEmployee(r);
      default:
        throw InvalidEmployeeType('Invalid employee type: ${r.type}');
    }
  }
}

// 下面是 Employee 的幾個具體實現，這裡只是為了示範
class CommissionedEmployee implements Employee {
  final EmployeeRecord record;
  CommissionedEmployee(this.record);

  @override
  bool isPayDay() {
    // 實現詳細
    return true;
  }

  @override
  Money calculatePay() {
    // 實現詳細
    return Money(1000);
  }

  @override
  void deliverPay(Money pay) {
    // 實現詳細
  }
}

class HourlyEmployee implements Employee {
  final EmployeeRecord record;
  HourlyEmployee(this.record);

  @override
  bool isPayDay() {
    // 實現詳細
    return true;
  }

  @override
  Money calculatePay() {
    // 實現詳細
    return Money(2000);
  }

  @override
  void deliverPay(Money pay) {
    // 實現詳細
  }
}

class SalariedEmployee implements Employee {
  final EmployeeRecord record;
  SalariedEmployee(this.record);

  @override
  bool isPayDay() {
    // 實現詳細
    return true;
  }

  @override
  Money calculatePay() {
    // 實現詳細
    return Money(3000);
  }

  @override
  void deliverPay(Money pay) {
    // 實現詳細
  }
}

void main() {
  EmployeeFactory factory = EmployeeFactoryImpl();

  EmployeeRecord record = EmployeeRecord('SALARIED');

  try {
    Employee emp = factory.makeEmployee(record);
    if (emp.isPayDay()) {
      Money pay = emp.calculatePay();
      emp.deliverPay(pay);
    }
  } catch (e) {
    print(e);
  }
}
