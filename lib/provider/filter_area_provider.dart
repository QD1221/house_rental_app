import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FilterAreaProvider extends ChangeNotifier {
  double _areaMin = 300.0;
  double _areaMax = 1200.0;

  late RangeValues _areaRangeValue;

  FilterAreaProvider() {
    _areaRangeValue = RangeValues(_areaMin, _areaMax);
  }

  double get areaMin => _areaMin;

  double get areaMax => _areaMax;

  RangeValues get areaRangeValue => _areaRangeValue;

  setAreaRangeValues(RangeValues rangeValues) {
    _areaRangeValue = rangeValues;
    _areaMin = _areaRangeValue.start.floorToDouble();
    _areaMax = _areaRangeValue.end.floorToDouble();
    notifyListeners();
  }
}
