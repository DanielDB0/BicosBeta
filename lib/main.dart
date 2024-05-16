import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

    bool IsObscure = true;

class MainApp extends StatelessWidget {
  const MainApp({super.key});

    bool senhaOculta(IsObscure){
      IsObscure = !IsObscure;
      return IsObscure;
    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
            color: const Color.fromARGB(255, 0, 125, 133),
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 15 / 64, 
                  bottom: MediaQuery.of(context).size.height * 19 / 160
                ),
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 17/100),
                  child: Column(
                    children: [
                      const Center(
                        child: Text(
                          'Fazer Login', 
                          style: TextStyle(
                            fontSize: 24, 
                            fontWeight: FontWeight.bold
                          )
                        )
                      ),
                      const Column(
                         children: [
                           TextField(
                             decoration: InputDecoration(
                               labelText: 'Nome de Usuário ou Email',
                               fillColor: Colors.black,
                               icon: Icon(
                                Icons.person,
                                color: Colors.black,
                               )
                             ),
                           )
                         ],
                      ),
                      Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 100)),
                      
                      TextField(
                        obscureText: IsObscure,
                        decoration: const InputDecoration(
                          labelText: 'Senha',
                          fillColor: Colors.black,
                          icon: Icon(
                            Icons.lock,
                            color: Colors.black,
                          ),
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 100),
                        child: 
                          TextButton(
                            onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MainApp()),);
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                             const Color.fromARGB(255, 9, 0, 118),
                            ),
                          ),
                          child: const Text('Cadastrar', style: TextStyle(color:Colors.white),),
                        )
                      )
                    ],
                  )
                )
              ),
               Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 41 / 144, 
                  top: MediaQuery.of(context).size.height / 15
                ),
                child: Image.asset(
                  'assets/BicosLogo.png',
                  width: MediaQuery.of(context).size.width * 31 / 72
                ),
              ),
            ]
          ),
        )
      ),
    );
  }
}






























/*

Container(
  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 8/9),
  child: const Center(
    child: Text(
      'Bicos', 
      style: 
       TextStyle(
        fontSize: 30,
        color: Color.fromARGB(255, 0, 125, 133),
        shadows: [
          Shadow(
            color: Color.fromARGB(255, 170, 201, 210),
            offset: Offset(-2.0, -2.0),
            blurRadius: 1.0,
          )
        ]
      ) 
    ),
  )
),

*/