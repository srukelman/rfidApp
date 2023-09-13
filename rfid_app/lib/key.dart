class Key{
  String _name;
  String _rfid_code;
  Key(this._name, this._rfid_code);
  void setName(name){
    this._name = name;
  }
  void set_rfid_code(rfid_code){
    this._rfid_code = rfid_code;
  }
  String getName(){
    return this._name;
  }
  String getRFIDCode(){
    return this._rfid_code;
  }
}