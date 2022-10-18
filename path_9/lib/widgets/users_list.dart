import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path_9/models/User.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key});

  @override
  State<UsersList> createState() => _UsersListState();
}

List<User> usersList = [
  User(
      age: 16,
      firstName: 'Иван',
      lastName: 'Иванов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar:
          'https://sun9-east.userapi.com/sun9-43/s/v1/ig2/pHIUaqfzGjCXl7swoCN4RZSy-ENhUa20zhXwFwcDWXQCkhfvG_uh6-1WMvKbTBd5HmMq-b_8LFy37s9vORssLM2x.jpg?size=1620x2160&quality=95&type=album'),
  User(
      age: 16,
      firstName: 'Иван',
      lastName: 'Иванов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar:
          'https://sun1.userapi.com/sun1-13/s/v1/ig2/j0O5YwuMHy891ynZJqUucTU72b3sevqrsn-iNEmFqTOVPs9aMOW0xXPlNGPkBro1XMJOoljLMKCeSqgl38ctv6lO.jpg?size=644x1280&quality=96&type=album'),
  User(
      age: 16,
      firstName: 'Иван',
      lastName: 'Иванов',
      phone: '2345435345',
      email: 'example@mail.ru',
      avatar:
          'https://sun9-north.userapi.com/sun9-77/s/v1/ig2/mqJ_mBJb2r5xKNtZq9v9E32e5yPLZZrXVYSEO8ivCpxJFzG3VsTv7c95Irnz2mINRWMRjKyrnpfEc8giCdmSkwzF.jpg?size=1620x2160&quality=95&type=album'),
];

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: usersList.length,
        itemBuilder: (context, index) {
          return Card(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    child: usersList[index].avatar == ''
                        ? Image.network(
                            'https://pic.onlinewebfonts.com/svg/img_156739.png')
                        : Image.network(usersList[index].avatar,
                            fit: BoxFit.cover),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Имя: ' + usersList[index].firstName,
                        textAlign: TextAlign.left,
                      ),
                      Text('Фамилия: ' + usersList[index].lastName),
                      Text('Возраст: ' + usersList[index].age.toString()),
                      Text('Телефон: ' + usersList[index].phone),
                      Text('Телефон: ' + usersList[index].email),
                    ],
                  ),
                ],
              )
            ],
          ));
        });
  }
}
