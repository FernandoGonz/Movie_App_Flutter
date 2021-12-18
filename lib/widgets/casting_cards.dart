import 'package:flutter/material.dart';

class CastingCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      width: double.infinity,
      height: 180.0,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _CastCard();
          }),
    );
  }
}

class _CastCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      height: 100.0,
      width: 110.0,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('https://via.placeholder.com/150x300'),
                height: 140.0,
                width: 100.0,
                fit: BoxFit.cover,),
          ),
          SizedBox(height: 5.0,),
          Text('actor.name', maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
