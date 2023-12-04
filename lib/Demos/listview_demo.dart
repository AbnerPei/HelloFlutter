import 'package:flutter/material.dart';
import 'package:hello_flutter/Models/car.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  Widget _cellForList(BuildContext context, int index) {
    // test1：仅展示车名
    // // 注意：这里 `name` 需强制解包
    // return Text(cars[index].name!);

    // test2：仅展示车图片
    // return Image.network(cars[index].imageUrl!);

    // test3：车图片、名字都展示
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(cars[index].imageUrl!),
          const SizedBox(height: 20),
          Text(
            cars[index].name!,
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: _cellForList,
        itemCount: cars.length
    );
  }
}

