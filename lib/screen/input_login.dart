import 'package:flutter/material.dart';
import 'package:kependudukan/screen/data_penduduk.dart';
import 'package:kependudukan/screen/input_new_data.dart';

class InputLogin extends StatefulWidget {
  const InputLogin({Key? key}) : super(key: key);

  @override
  _InputLoginState createState() => _InputLoginState();
}

class _InputLoginState extends State<InputLogin> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void login() {
    if (email.text == 'luluk123@gmail.com' && password.text == '12345') {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DataPenduduk(),
          ));
    } else {
      SnackBar tulisan = SnackBar(content: Text('email atau password salah!'));
      ScaffoldMessenger.of(context).showSnackBar(tulisan);
    }
  }

  @override
  Widget build(BuildContext context) {
    final InputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: BorderSide(
          width: 1,
          color: Theme.of(context).primaryColor,
        ));
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 140,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    filled: true,
                    fillColor: Color(0xffC0D6D1),
                    hintText: 'Email',
                    border: border,
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                    enabledBorder: border),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    filled: true,
                    fillColor: Color(0xffC0D6D1),
                    hintText: 'Password',
                    border: border,
                    suffixIcon: Icon(Icons.remove_red_eye),
                    focusedBorder: border.copyWith(
                        borderSide: BorderSide(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    )),
                    enabledBorder: border),
              ),
              const SizedBox(
                height: 60.0,
              ),
              ElevatedButton(
                onPressed: login,
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                ),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Forget your password?',
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
