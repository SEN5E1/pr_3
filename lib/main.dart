import 'package:flutter/material.dart';

const Color darkPurlple = Color.fromARGB(255, 52, 18, 56);

//Модель данных
class Country {
  String population = '';
  String capital = '';
  String President = '';
  String name = '';
  String avatar = '';
  String Pravatar = '';
  Country(
      {this.population = '',
      this.capital = '',
      this.President = '',
      this.name = '',
      this.avatar = '',
      this.Pravatar = ''});
}

List<Country> CountryList = [
  Country(
      President: 'Путин',
      capital: 'Москва',
      population: '146млн',
      name: 'Россия',
      avatar:
          'https://www.ros-color.ru/storage/post/34/344b0ad1ab5c2bdef84d854e51b28b8c.jpeg',
      Pravatar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNz_af6AOHezhWxx-e0jG0YHG4nlJ7CMCoQDHuK8iu7X9lAkIb_Q2oZkuFcc5Vir6LFec&usqp=CAU'),
  Country(
      President: 'Байден',
      capital: 'Вашингтон',
      population: '329млн',
      name: 'США',
      avatar:
          'https://avatars.mds.yandex.net/i?id=9423ef67309eeb326edc4153f70c3f36-5285824-images-thumbs&n=13',
      Pravatar:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/68/Joe_Biden_presidential_portrait.jpg/230px-Joe_Biden_presidential_portrait.jpg'),
  Country(
      President: 'Филипп VI',
      capital: 'Мадрид',
      population: '47млн',
      name: 'Испания',
      avatar:
          'https://avatars.mds.yandex.net/i?id=db7b876fa7833df57d4eed60296c31de-3604407-images-thumbs&n=13',
      Pravatar:
          'https://upload.wikimedia.org/wikipedia/commons/e/e6/Pedro_S%C3%A1nchez_in_2020.jpg'),
  Country(
      President: 'Серджо Маттарелла',
      capital: 'Рим',
      population: '59млн',
      name: 'Италия',
      avatar:
          'https://avatars.mds.yandex.net/i?id=042bdac4287a1590883336fcdb1264b9-4054944-images-thumbs&n=13',
      Pravatar:
          'https://upload.wikimedia.org/wikipedia/commons/2/2b/Presidente_Sergio_Mattarella.jpg'),
  Country(
      President: 'Эмманюэль Макрон',
      capital: 'Париж',
      population: '67млн',
      name: 'Франция',
      avatar:
          'https://avatars.mds.yandex.net/i?id=2bfba6d3c0e30b1a6f4884955714202d-4257750-images-thumbs&n=13',
      Pravatar:
          'https://upload.wikimedia.org/wikipedia/commons/f/f4/Emmanuel_Macron_in_2019.jpg'),
  Country(
      President: 'Франк-Вальтер Штайнмайер',
      capital: 'Берлин',
      population: '83млн',
      name: 'Германия',
      avatar:
          'https://avatars.mds.yandex.net/i?id=2ab90b0f7a504a8ee9e99f61a3d5a1bd-5734463-images-thumbs&n=13',
      Pravatar:
          'https://avatars.mds.yandex.net/i?id=5a4519719aee4c428cafd178dbdc56c9-4343836-images-thumbs&n=13'),
  Country(
      President: 'Иньяцио Кассис',
      capital: 'Бёрн',
      population: '8млн',
      name: 'Швейцария',
      avatar:
          'https://avatars.mds.yandex.net/i?id=ad21186e1816eef17c285563bcf682ba-3390871-images-thumbs&n=13',
      Pravatar:
          'https://upload.wikimedia.org/wikipedia/commons/7/7f/Ignazio_Cassis_%282015%29.jpg'),
  Country(
      President: 'Милош Земан',
      capital: 'Прага',
      population: '10млн',
      name: 'Чехия',
      avatar:
          'https://avatars.mds.yandex.net/i?id=a3beb33221493e309a6b5db849bb210c-5481528-images-thumbs&n=13',
      Pravatar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlPlINzDvTKhRwhKHhpugarpMgXjTgsaZMUBIQ9TNF&s'),
  Country(
      President: 'Анджей Дуда',
      capital: 'Варшава',
      population: '37млн',
      name: 'Польша',
      avatar:
          'https://avatars.mds.yandex.net/i?id=5eb9e68c646856e0180aec222546937e-5877892-images-thumbs&n=13',
      Pravatar:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhe7G6T5P1EaYJV4zua3xs7HI1I7T88IJJ61kjoX3f&s'),
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final style = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(135, 16, 90, 119),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Align(
                child: Text("RuPedia"),
                alignment: Alignment.center)),
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final style = TextStyle(fontSize: 10, fontWeight: FontWeight.bold);
  //Основной виджет экрана
  @override
  Widget build(BuildContext context) {
    //формирование списка студентов
    return ListView.builder(
      itemCount: CountryList.length,
      itemBuilder: (context, index) {
        return ListTile(
            title: Center(
              child: Text(index.toString() +
                  ' ' +
                  CountryList[index].name +
                  ' ' +
                  CountryList[index].capital,
                  style: TextStyle(
                        color: Color.fromARGB(178, 104, 238, 198),
                        fontSize: 19,
                        fontWeight: FontWeight.bold)),
            ),
            subtitle: Column(
              children: [
                Text('Президент: ' + CountryList[index].President, 
                style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                Text('Население: ' + CountryList[index].population, 
                style: TextStyle(
                        color: Color.fromARGB(255, 252, 252, 252),
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            //Возраст студента
            onTap: () {
              //Переход на экран просмотра инфлрмации о студенте
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CountryDetailScreen(
                    name: CountryList[index].name,
                    President: CountryList[index].President,
                    capital: CountryList[index].capital,
                    population: CountryList[index].population,
                    avatar: CountryList[index].avatar,
                    Pravatar: CountryList[index].Pravatar,
                  ),
                ),
              );
            });
      },
    );
  }
}

//Виджет детального просмотра студента
class CountryDetailScreen extends StatelessWidget {
  final String name;
  final String President;
  final String capital;
  final String population;
  final String avatar;
  final String Pravatar;

  const CountryDetailScreen(
      {Key? key,
      required this.name,
      this.President = '',
      this.capital = '',
      this.population = '',
      this.avatar = '',
      this.Pravatar = ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color.fromARGB(144, 161, 139, 139),
        ),
        home: Scaffold(
          appBar: AppBar(
              title: Text('$name'),
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_sharp),
              )),
          body: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                child: SizedBox(
                    width: 200.0,
                    height: 300.0,
                    child: Center(child: Image.network('$avatar'))),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$name',
                    style: TextStyle(
                        color: Color.fromARGB(255, 190, 5, 5),
                        fontSize: 22,
                        fontWeight: FontWeight.bold))
              ],
            ),
            Padding(
                padding: EdgeInsets.only(right: 10.0, left: 10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Президент:',
                        style: TextStyle(
                        color: Color.fromARGB(221, 6, 182, 129),
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                        Column(
                          children: [
                            SizedBox(
                                width: 150.0,
                                height: 150.0,
                                child: Image.network('$Pravatar')),
                            Text('$President',
                            style: TextStyle(
                        color: Color.fromARGB(221, 6, 182, 129),
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Столица: ',
                        style: TextStyle(
                        color: Color.fromARGB(255, 5, 162, 190),
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                        Text('$capital',
                        style: TextStyle(
                        color: Color.fromARGB(255, 5, 162, 190),
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Население: ',
                        style: TextStyle(
                        color: Color.fromARGB(255, 164, 46, 233),
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                        Text('$population',
                        style: TextStyle(
                        color: Color.fromARGB(255, 164, 46, 233),
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ))
          ]),
        ));
  }
}
