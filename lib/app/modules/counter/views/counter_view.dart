import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counter_controller.dart';


class CounterView extends GetView<CounterController> {
  const CounterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Center( //const hapus
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hitungan Ke :'),
            Obx(
              () => Text(controller.bilangan.toString()),
            ),
                    Container(
            padding: EdgeInsets.all(1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
               
            ElevatedButton(
              onPressed: () {
                controller.tambahSatu();
              },
              child: Icon(Icons.add),
            ),
                ElevatedButton(
              onPressed: () {
                controller.kurangSatu();
              },
              child: Icon(Icons.remove),
            ),
            ElevatedButton(
              onPressed: () {
                controller.resetSatu();
              },
              child: Icon(Icons.cached),
            ),
              ],
            ),
          ),
           
          ],
        ),
      ),
    );
  }

  String newMethod() => controller.bilangan.toString();
}