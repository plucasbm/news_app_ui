import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withAlpha(100),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(left: 50),
              child: IconButton(
              onPressed: (){
                Navigator.pushNamed(context, '/');
              },
              icon: Icon(Icons.home),
              ),
            ),
            label: 'Início',
          ),

          BottomNavigationBarItem(
            icon: IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/discover');
            },
            icon: Icon(Icons.search),
            ),
            label: 'Pesquisar',
          ),

          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(right: 50),
              child: IconButton(
              onPressed: (){
                print('Sem perfil por hora');
              },
              icon: Icon(Icons.person),
              ),
            ),
            label: 'Perfil',
          ),
        ],
      );
  }
}