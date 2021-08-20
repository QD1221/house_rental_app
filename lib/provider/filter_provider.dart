import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FilterProvider extends ChangeNotifier {
  double _priceMin = 300.0;
  double _priceMax = 2500.0;

  double get priceMin => _priceMin;

  double get priceMax => _priceMax;

  FilterProvider() {
    _priceRangeValue = RangeValues(_priceMin, _priceMax);
  }

  late RangeValues _priceRangeValue;

  RangeValues get priceRangeValue => _priceRangeValue;

  setPriceRangeValues(RangeValues rangeValues) {
    _priceRangeValue = rangeValues;
    _priceMin = _priceRangeValue.start.floorToDouble();
    _priceMax = _priceRangeValue.end.floorToDouble();
    notifyListeners();
  }
}
