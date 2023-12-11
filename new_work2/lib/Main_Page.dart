import 'package:flutter/material.dart';
import 'package:new_work2/book_1.dart';


class Main_Page extends StatelessWidget {
  const Main_Page({Key? key}) : super(key: key);

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
          _MakeBottom(context),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
                print('클릭');
              },
              child: Column(
                children: [
                  Icon(
                    Icons.home,
                    size: 40,
                    color: Colors.blue,
                  ),
                  Text('홈'),
                ],
              ),
            ),
            Column(
              children: [
                Icon(
                  Icons.search,
                  size: 40,
                  color: Colors.blue,
                ),
                Text('검색'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: Colors.blue,
                  size: 40,
                ),
                Text('장바구니'),
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.check,
                  size: 40,
                  color: Colors.blue,
                ),
                Text('주문조회'),
              ],
            ),
          ],
        ),

      ],
    );
  }


  Widget _MakeBottom(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Divider(
          thickness: 2,
          color: Colors.blue,
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => book_1()),
            );
          },
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 70),
                width: 100,
                  height: 150,
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
                       ],
                      ),
              ),
                   ],
                   ),
        ),
        Divider(
          thickness: 2,
          color: Colors.blue,
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          thickness: 2,
          color: Colors.blue,
        ),
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(right: 70),
                width: 100,
                height: 150,
                child:
                Image.asset('assets/copin.jpg',
                  fit: BoxFit.cover,)
            ),
            Container(
              child: Column(
                children: [
                  Text('제목:  코핀 댄서',
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
                ],
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2,
          color: Colors.blue,
        ),
        SizedBox(
          height: 20,
        ),
        Divider(
          thickness: 2,
          color: Colors.blue,
        ),
        Row(
          children: [
            Container(
                margin: EdgeInsets.only(right: 70),
                width: 100,
                height: 150,
                child:
                Image.asset('assets/bug.jpg',
                  fit: BoxFit.cover,)
            ),
            Container(
              child: Column(
                children: [
                  Text('제목: 곤충 소년',
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
                ],
              ),
            ),
          ],
        ),
        Divider(
          thickness: 2,
          color: Colors.blue,
        ),
      ],
    );
  }
}
