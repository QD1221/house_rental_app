import 'package:flutter/material.dart';
import 'package:house_rental_app/provider/filter_area_provider.dart';
import 'package:house_rental_app/provider/filter_provider.dart';
import 'package:house_rental_app/widget/price_range_slider_widget.dart';
import 'package:provider/provider.dart';

import 'area_range_slider_widget.dart';

class FilterPage extends StatelessWidget {
  FilterPage({Key? key}) : super(key: key);

  ValueNotifier<int> selectedRooms = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Rooms'),
                          SizedBox(
                            height: 16,
                          ),
                          ValueListenableBuilder<int>(
                            valueListenable: selectedRooms,
                            builder:
                                (BuildContext context, value, Widget? child) {
                              return Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        selectedRooms.value = 0;
                                      },
                                      child: AnimatedContainer(
                                        decoration: BoxDecoration(
                                            color: value == 0
                                                ? Colors.blue
                                                : Colors.white,
                                            border: Border.all(
                                                color: Colors.grey[400]!),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding: EdgeInsets.all(8),
                                        duration: Duration(milliseconds: 250),
                                        child: Text(
                                          '3',
                                          style: TextStyle(
                                            color: value == 0
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        selectedRooms.value = 1;
                                      },
                                      child: AnimatedContainer(
                                        decoration: BoxDecoration(
                                            color: value == 1
                                                ? Colors.blue
                                                : Colors.white,
                                            border: Border.all(
                                                color: Colors.grey[400]!),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding: EdgeInsets.all(8),
                                        duration: Duration(milliseconds: 250),
                                        child: Text(
                                          '4',
                                          style: TextStyle(
                                            color: value == 1
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        selectedRooms.value = 2;
                                      },
                                      child: AnimatedContainer(
                                        decoration: BoxDecoration(
                                            color: value == 2
                                                ? Colors.blue
                                                : Colors.white,
                                            border: Border.all(
                                                color: Colors.grey[400]!),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding: EdgeInsets.all(8),
                                        duration: Duration(milliseconds: 250),
                                        child: Text(
                                          '5',
                                          style: TextStyle(
                                            color: value == 2
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        selectedRooms.value = 3;
                                      },
                                      child: AnimatedContainer(
                                        decoration: BoxDecoration(
                                            color: value == 3
                                                ? Colors.blue
                                                : Colors.white,
                                            border: Border.all(
                                                color: Colors.grey[400]!),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding: EdgeInsets.all(8),
                                        duration: Duration(milliseconds: 250),
                                        child: Text(
                                          '6',
                                          style: TextStyle(
                                            color: value == 3
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        selectedRooms.value = 4;
                                      },
                                      child: AnimatedContainer(
                                        decoration: BoxDecoration(
                                            color: value == 4
                                                ? Colors.blue
                                                : Colors.white,
                                            border: Border.all(
                                                color: Colors.grey[400]!),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        padding: EdgeInsets.all(8),
                                        duration: Duration(milliseconds: 250),
                                        child: Text(
                                          '7+',
                                          style: TextStyle(
                                            color: value == 4
                                                ? Colors.white
                                                : Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Row(
                        children: [
                          Text('Area'),
                          Spacer(),
                          Consumer<FilterAreaProvider>(
                            builder: (context, value, child) {
                              return Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Text(
                                    '${value.areaMin} m2',
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
                          Consumer<FilterAreaProvider>(
                            builder: (context, value, child) {
                              return Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Text(
                                    '${value.areaMax} m2',
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
                    AreaRangeSliderWidget(),
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
