
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          clipper: MyCustomClipQuadrado(),
      ),
        ),

         Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          clipper: MyCustomClipTrianguloRetangulo(),
      ),
        ),

         Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          clipper: MyCustomClipRetangulo(),
      ),
        ),

         Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          clipper: MyCustomClipTrianguloEquilatero(),
      ),
        ),

         Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          clipper: MyCustomClipTrianguloIsoceles(),
      ),
        ),

         Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          clipper: MyCustomClipTrianguloEscaleno(),
      ),
        ),

         Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          clipper: MyCustomClipLosangulo(),
      ),
        ),

         Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          clipper: MyCustomClipPetagono(),
      ),
        ),

         Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          clipper: MyCustomClipHexagono(),
      ),
        ),

         Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          clipper: MyCustomClipTrapezio(),
      ),
        ),

         Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          clipper: MyCustomClipParalelogramo(),
      ),
        ),

         Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipPath(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
          ),
          clipper: MyCustomClipEstrela(),
      ),
        ),
      ],),
    );
  }
}


// Triângulo retângulo
class MyCustomClipTrianguloRetangulo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.close();
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}


// quadrado
class MyCustomClipQuadrado extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}


// retangulo
class MyCustomClipRetangulo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(0, size.height / 2);

    path.close();
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

//  triangulo equilatero
class MyCustomClipTrianguloEquilatero extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}


//  triangulo isoceles
class MyCustomClipTrianguloIsoceles extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width - 100, size.height);
    path.lineTo(100, size.height);

    path.close();
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}


//  triangulo escaleno
class MyCustomClipTrianguloEscaleno extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(100, size.height);

    path.close();
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}



//  losângulo
class MyCustomClipLosangulo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height / 2);

    path.close();
    
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

// pentágono
class MyCustomClipPetagono extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width - size.width * .2, size.height);
    path.lineTo(size.width * .2, size.height);
    path.lineTo(0, size.width / 3);
    return path;
  }

  @override 
  shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

// hexagono
class MyCustomClipHexagono extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    
    path.moveTo(size.width * .2 , 0);
    path.lineTo(size.width - size.width * .2, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - size.width * .2, size.height);
    path.lineTo(size.width * .2, size.height);
    path.lineTo(0, size.height / 2);
    return path;
  }

  @override 
  shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

// trapézio
class MyCustomClipTrapezio extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    
    path.moveTo(size.width * .2 , 0);
    path.lineTo(size.width - size.width * .2, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(0, size.height / 2);
    return path;
  }

  @override 
  shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

// trapézio
class MyCustomClipParalelogramo extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    
    path.moveTo(size.width * .2 , 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width - size.width * .2, size.height / 2);
    path.lineTo(0, size.height / 2);
    return path;
  }

  @override 
  shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

// estrela
class MyCustomClipEstrela extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width - size.width * .4, size.height / 2.3);
    path.lineTo(size.width,  size.height / 2.7);
    path.lineTo(size.width - size.width * .4, size.height / 1.6);
    path.lineTo(size.width - size.width * .2, size.height);
    path.lineTo(size.width / 2, size.height - size.height * .24);
    path.lineTo(size.width * .2, size.height);
    path.lineTo(size.width * .4, size.height / 1.6);
    path.lineTo(0, size.height / 3);
    path.lineTo(size.width * .4,  size.height / 2.3);
    return path;
  }

  @override 
  shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
