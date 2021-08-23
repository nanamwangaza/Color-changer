import 'package:aunt_rafiki/pages/components/round_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoomColourChanger extends StatefulWidget {
  const BoomColourChanger({Key? key}) : super(key: key);

  @override
  _BoomColourChangerState createState() => _BoomColourChangerState();
}

class _BoomColourChangerState extends State<BoomColourChanger> {
  Color _backgroundColor=Colors.purple;
  List<Color> _colorlist=[Colors.red,Colors.blue,Colors.green,Colors.yellow,Colors.grey,Colors.orange,Colors.white,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        elevation: 0,
        leading: Icon(
          Icons.color_lens,
          size: 60,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('more');
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Boom-magic colour change',style: TextStyle(fontSize: 40, color: Colors.white),),
          Spacer(),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount:_colorlist.length,
              scrollDirection:Axis.horizontal,
              itemBuilder:(context,index){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: RoundButton(onTap: () { setState(() {
                    _backgroundColor=_colorlist[index];
                  }); }, color:_colorlist[index],),
              );
            })
             ,
          ) // CONTAINER WRAPPED BY WIDGET THEN WRAPPERD BY CONTAINER
        ,
        Spacer()
        ],
      ),
    );
  }
}
