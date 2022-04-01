import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      onWillPop: ()async{
       return alertMessage();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
            child: Icon(FontAwesomeIcons.arrowUp),
            onPressed: (){
              btnWork(context);
            }),
      ),
    );
  }


  Future<void>btnWork(BuildContext ctx)async{
    showModalBottomSheet(context: ctx, builder: (ctx1){
      return Container(
        width: double.infinity,
        height: 400,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(FontAwesomeIcons.faceSmile),
            Icon(FontAwesomeIcons.faceAngry),
            Icon(FontAwesomeIcons.faceGrinTears),
          ],
        ),
      );
    });
  }




  alertMessage(){
    showDialog(context: context, builder: (ctx){
      return AlertDialog(
        title: Text("are you sure want to exit"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(onPressed: (){
              Navigator.of(context).pop();

            }, child: Text("ok"),
            ),
            TextButton(onPressed: (){}, child: Text("no"),
            )
          ],
        ),
      );
    });
  }

}
