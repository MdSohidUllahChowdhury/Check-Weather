import 'dart:ui';
import 'package:flutter/material.dart';

Widget customCard(){
  return Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              child: SizedBox(
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '286K',
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          Text(
                            'Rain',
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
}