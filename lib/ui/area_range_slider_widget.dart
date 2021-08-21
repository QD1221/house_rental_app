import 'package:flutter/material.dart';
import 'package:house_rental_app/provider/filter_area_provider.dart';
import 'package:provider/provider.dart';

class AreaRangeSliderWidget extends StatelessWidget {
  const AreaRangeSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hfProvider = Provider.of<FilterAreaProvider>(context);
    return RangeSlider(
      values: hfProvider.areaRangeValue,
      onChanged: (rv) {
        hfProvider.setAreaRangeValues(rv);
      },
      min: 0,
      max: 1500,
    );
  }
}
