# Exercise 1
Use a diagram to group the methods in these examples:

Bank
  - get_balance
  - credit_account(date, amount)
  - debit_account(date, amount)
  - print_statement

SecretDiary
  - lock
  - unlock
  - add_entry
  - get_entries

**Solution**

Bank:

get bank_info:
  - credit_account(date, amount)
  - debit_account(date, amount)

calculate balance:
  - get_balance

display balance:
  - print_statement


SecretDiary:

change permission status:
- lock
- unlock

add on record:
  - add_entry

list record:
  - print_statement
