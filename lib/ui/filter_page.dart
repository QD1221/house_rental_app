import 'package:flutter/material.dart';
import 'package:house_rental_app/provider/filter_provider.dart';
import 'package:house_rental_app/widget/price_range_slider_widget.dart';
import 'package:provider/provider.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(Icons.clear),
                              color: Colors.blue,
                            ),
                          ),
                          flex: 4,
                        ),
                        Expanded(
                          child: Text(
                            'Filter',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          flex: 5,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          Text('Price Nightly'),
                          Spacer(),
                          Consumer<FilterProvider>(
                            builder: (context, value, child) {
                              return Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Text(
                                    '\$${value.priceMin}',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              '-',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Consumer<FilterProvider>(
                            builder: (context, value, child) {
                              return Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Text(
                                    '\$${value.priceMax}',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    PriceRangeSliderWidget(),
                  ],
                ),
              ),
              flex: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Text(
                        'Show Me',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
