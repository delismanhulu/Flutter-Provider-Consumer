import 'package:flutter/material.dart';

class JenisProvider with ChangeNotifier {
  bool _kelamin = true;

  bool get isKelamin  => _kelamin;

  set isKelamin (bool newValue){
    _kelamin = newValue;
    notifyListeners();
  }

  get color => isKelamin  ? Colors.blue : Colors.pink;
  get laki => isKelamin  ? Colors.blue : Colors.grey;
  get peremuan => isKelamin  ? Colors.grey : Colors.pink;

  get jenis => isKelamin  ? 'Laki-Laki' : 'Perempuan';
}