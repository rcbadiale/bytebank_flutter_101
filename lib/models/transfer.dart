class Transfer {
  Transfer(this._value, this._account);

  final double _value;
  final int _account;

  get value {
    return 'R\$ ' + _value.toString();
  }

  get account {
    return 'CC: ' + _account.toString();
  }

  @override
  String toString() {
    return 'Transfer {value: $_value, account: $_account}';
  }
}
