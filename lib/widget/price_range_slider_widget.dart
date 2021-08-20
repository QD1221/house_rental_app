import 'package:flutter/material.dart';
import 'package:house_rental_app/provider/filter_provider.dart';
import 'package:provider/provider.dart';

class PriceRangeSliderWidget extends StatelessWidget {
  const PriceRangeSliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hfProvider = Provider.of<FilterProvider>(context);
    return RangeSlider(
      values: hfProvider.priceRangeValue,
      onChanged: (rv) {
        hfProvider.setPriceRangeValues(rv);
      },
      min: 0,
      max: 5000,
    );
  }
}
