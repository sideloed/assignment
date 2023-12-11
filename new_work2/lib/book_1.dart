import 'package:flutter/material.dart';
import 'package:new_work2/Main_Page.dart';

class book_1 extends StatelessWidget {
  const book_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('서점',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),

      body: ListView(
        children: <Widget>[
          _MakeTop(context),
          _MakeMiddle(),
          _MakeBottom(),
        ],
      ),
    );
  }


  Widget _MakeTop(BuildContext context) {
    return GestureDetector( onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Main_Page()),
      );
    },
        child: Image.asset ('assets/title.png')
    );

  }


  Widget _MakeMiddle() {
    return Column(
      children: [

            Container(
                width: 200,
                height: 350,
                child:
                Image.asset('assets/bone.jpg',
                  fit: BoxFit.cover,)
            ),
            Container(
              child: Column(
                children: [
                  Text('제목: 본 컬렉터',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('작가: 제프리 디버',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('가격: 13500원',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('배송비: 무료',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('발매일: 2009년 09월 25일',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 50,)
                ],
              ),
            ),
      ],
    );
  }

  Widget _MakeBottom() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Image.asset('assets/buy.png'),
              SizedBox(width: 10),
              Image.asset('assets/cart.png'),
            ],

          ),
        ),

      ],
    );
  }
}