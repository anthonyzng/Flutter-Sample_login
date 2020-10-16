import 'package:flutter/material.dart';
import 'package:flutter_particles/particles.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flip_card/flip_card.dart';
import 'package:movie_app/CreateAc.dart';
import 'package:movie_app/ForgetPw.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() => _LoginState();

}

class _LoginState extends State<Login>{
  var img_urls = ['https://images-na.ssl-images-amazon.com/images/M/MV5BMjQxMDE5NDg0NV5BMl5BanBnXkFtZTgwNTA5MDE2NDM@._V1_SY500_CR0,0,337,500_AL_.jpg',
  'https://images-na.ssl-images-amazon.com/images/M/MV5BMTk2Mjc2NzYxNl5BMl5BanBnXkFtZTgwMTA2OTA1NDM@._V1_SY500_CR0,0,320,500_AL_.jpg',
  'https://images-na.ssl-images-amazon.com/images/M/MV5BNWJmMWIxMjQtZTk0Mi00YTE0LTkyNzAtYzQxYjcwYjE4ZDk2XkEyXkFqcGdeQXVyMTc4MzI2NQ@@._V1_SY500_SX350_AL_.jpg'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Swiper(itemBuilder:(BuildContext context,int index){
            return new Image.network(img_urls[index],fit: BoxFit.contain,);
          },itemCount:3,
          loop: true,
          autoplay: true,
          pagination: SwiperPagination(),
          control: SwiperControl()
          ),
          Particles(25,Colors.blue.withOpacity(0.3)),
          Center(
            child: FlipCard(
              direction: FlipDirection.VERTICAL,
              front:  Center(
                child:Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    border: Border.all(
                      color: Colors.red,
                      width:10,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  
                  child:FlatButton.icon(onPressed:null, icon: Icon(Icons.login), label: Text('Login'),color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                )
              ), 
              back: Center(
                child:Card(
                  child:Column(
                  mainAxisSize: MainAxisSize.min,
                  children:<Widget>[
                          TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "User Name",
                                      fillColor: Colors.white,
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25.0),
                                        borderSide: BorderSide(),
                                      ),
                                    ),
                                    validator: (val){
                                      if(val.length==0){
                                        return "User Name cannot be empty";
                                      }else{
                                        return null;
                                      }
                                    },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                                    decoration: InputDecoration(
                                      labelText: "Password",
                                      fillColor: Colors.white,
                                      border:OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25.0),
                                        borderSide: BorderSide(),
                                      ),
                                    ),
                                    validator: (val){
                                      if(val.length==0){
                                        return "User Name cannot be empty";
                                      }else{
                                        return null;
                                      }
                                    },
                          ),
                        SizedBox(height: 10),
                        Row(children: [
                          FlatButton.icon(onPressed: (){GotoCreateAc();}, icon: Icon(Icons.account_box), label: Text('Create new account go back')),
                          FlatButton.icon(onPressed: (){GotoForgetPw();}, icon: Icon(Icons.help_center), label: Text('Forget Password go back')),
                        ],),
                        
                        SizedBox(height: 10),
                        Container(
                          child: FlatButton.icon(onPressed:(){login();}, icon: Icon(Icons.login), label: Text('Login'),color: Colors.deepOrangeAccent,highlightColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          ),
                        )
                  ]
                ),
                )
              ))
          ),
        ],
      )
    );
  }

  // void showlogin(){
  //     setState(() {
  //         this.opy = 1.0;
  //         this.btn_opy = 0.0;
  //     });
  // }

  void GotoCreateAc(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAc(tmp:"Create123")));
  }

  void GotoForgetPw(){
     Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPw(tmp2:"Forget123")));
  }
  void login(){
      print('login');
  }




}


          // Opacity(opacity: btn_opy,
          // child:
          //     Center(
          //       child: Container(
          //         child:FlatButton.icon(onPressed:(){showlogin();}, icon: Icon(Icons.login), label: Text('Login'),color: Colors.indigoAccent,highlightColor: Colors.green,
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.all(Radius.circular(10)),
          //           ),
          //         ),
          //       )
          //     )
          // ),