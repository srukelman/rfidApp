class Key{
  String _name = "";
  String _rfid_code = "";
  Key(this._name, this._rfid_code);
  Key.fromString(String fromString){
    final splitted = fromString.split(':');
    _name = splitted[0];
    _rfid_code = splitted[1];
  }
  void setName(name){
    _name = name;
  }
  void set_rfid_code(rfidCode){
    _rfid_code = rfidCode;
  }
  String getName(){
    return _name;
  }
  String getRFIDCode(){
    return _rfid_code;
  }
  @override
  String toString(){
    return "$_name:$_rfid_code";
  }
}