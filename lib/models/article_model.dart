import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
      required this.id, 
      required this.title, 
      required this.subtitle, 
      required this.body, 
      required this.author, 
      required this.authorImageUrl, 
      required this.category, 
      required this.imageUrl, 
      required this.views, 
      required this.createdAt
    }
  );

  static List<Article> articles = [
    Article(
      id: '1',
      title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      subtitle: 'Nam tellus nisl, ullamcorper a nisl sit amet, fermentum porta arcu.',
      body: 'Nulla aliquet nunc varius ante ultricies ullamcorper sit amet id libero. In gravida nibh et eros feugiat sollicitudin. Cras condimentum ullamcorper odio in hendrerit. In hac habitasse platea dictumst. Sed dui odio, imperdiet et laoreet ac, dapibus quis nisl. Sed imperdiet dolor nulla, vitae posuere magna eleifend ac. Quisque vitae erat at nisi tempus mollis eu venenatis risus.',
      author: 'Elon Musk',
      authorImageUrl: 'https://t.ctcdn.com.br/IVlt3nVuXYDVX4vyjzgborR84H0=/400x400/smart/i490793.jpeg',
      category: 'Politics',
      imageUrl: 'https://images.unsplash.com/photo-1663614169496-a379baee8795?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
      views: 2467,
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),

    Article(
      id: '2',
      title: 'Aliquam finibus placerat nisl et suscipit.',
      subtitle: 'Nunc eget ultrices odio.',
      body: 'Praesent pulvinar ultricies lorem sed egestas. Vestibulum pellentesque bibendum nisl, at feugiat mi. Nulla et leo ut risus tincidunt sollicitudin et eget quam. Nunc lorem risus, porta nec lorem vel, tempor consectetur orci. Phasellus convallis eu arcu non dignissim. Donec hendrerit nibh bibendum, iaculis dolor eu, tristique sapien. Vivamus non dignissim purus. Proin dignissim fermentum laoreet.',
      author: 'Steve Rogers',
      authorImageUrl: 'https://i0.wp.com/cebolaverde.com.br/wp-content/uploads/2017/03/Chris-Evans.jpg?resize=1155%2C770&ssl=1',
      category: 'Politics',
      imageUrl: 'https://images.unsplash.com/photo-1663619207118-00cfad465479?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      views: 186,
      createdAt: DateTime.now().subtract(const Duration(hours: 1)),
    ),

    Article(
      id: '3',
      title: 'Aliquam cursus tortor quis suscipit iaculis.',
      subtitle: 'Donec erat felis, ultrices eget quam quis, facilisis tincidunt libero.',
      body: 'Nulla facilisi. Sed gravida convallis elit ut suscipit. Sed ac sem nibh. Aliquam quis tincidunt felis. Etiam ac aliquet nisi, a faucibus nibh. Etiam cursus turpis varius rhoncus malesuada. Duis tincidunt augue nec orci venenatis, ut efficitur eros gravida.',
      author: 'Matthew Murdock',
      authorImageUrl: 'http://pm1.narvii.com/7761/2fe01fb916efa1bc35e73ee386394b026a59788cr1-728-728v2_00.jpg',
      category: 'Politics',
      imageUrl: 'https://images.unsplash.com/photo-1663154756434-dcf3df9c7ef8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80',
      views: 290,
      createdAt: DateTime.now().subtract(const Duration(hours: 2)),
    ),

    Article(
      id: '4',
      title: 'Nulla consequat vel massa sed pretium.',
      subtitle: 'Integer vitae vulputate urna.',
      body: 'Proin nec erat sodales, interdum risus sit amet, volutpat massa. Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Suspendisse magna nisl, feugiat tempor varius vel, accumsan sit amet tellus. Etiam venenatis euismod congue. Phasellus odio nisl, mollis quis cursus vitae, venenatis id lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      author: 'Bruce Wayne',
      authorImageUrl: 'https://i.pinimg.com/originals/b2/ba/ca/b2baca17ec954223b2645303e61d7b14.jpg',
      category: 'Politics',
      imageUrl: 'https://images.unsplash.com/photo-1663264891853-a32793671359?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      views: 456,
      createdAt: DateTime.now().subtract(const Duration(hours: 3)),
    ),

    Article(
      id: '5',
      title: 'Cras quis facilisis enim.',
      subtitle: 'Duis porta, orci sed porta volutpat, turpis lacus porttitor nibh, ac bibendum nibh leo eget eros.',
      body: 'Aliquam quis mollis turpis. Etiam porttitor, ipsum sed lobortis feugiat, lacus est consequat ex, et bibendum odio dolor vitae nisi. Fusce condimentum purus sit amet felis interdum accumsan. Sed eu enim non eros aliquet auctor. Aenean ac interdum tellus. Cras tincidunt ligula in sem viverra, in sodales lectus suscipit. Sed aliquam, massa eget suscipit varius, ipsum nisi posuere nulla, vel mattis dui tortor et justo.',
      author: 'Natasha Romanoff',
      authorImageUrl: 'https://i.pinimg.com/564x/11/93/0d/11930d63410adfd5d0857d95f39e212e.jpg',
      category: 'Politics',
      imageUrl: 'https://images.unsplash.com/photo-1663352209268-2048a2cccda4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
      views: 5437,
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),

  ];

  @override
  List<Object?> get props => [
    id,
    title,
    subtitle,
    body,
    author,
    authorImageUrl,
    category,
    imageUrl,
    views,
    createdAt,
  ];

}