import 'package:flutter/material.dart';
import 'package:kuis_praktikum_123200114/HalamanDetail.dart';
import 'rental_car.dart';

class HalamanList extends StatelessWidget {
  const HalamanList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rental mobil')
      ),
      body: ListView.builder(
        itemCount: rentalCar.length,
        itemBuilder: (context, index){
          final RentalCar mobil = rentalCar[index];
          return ListTile(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => HalamanDetail(mobil: mobil)
                ),
              );
            },
            leading: Image.network(
              mobil.images[0],
              width: 100,
              fit: BoxFit.cover,
            ),
            title: Row(
              children: [
                Text(mobil.brand),
                Text(' '),
                Text(mobil.model),
              ],
            ),
            subtitle: Text(mobil.rentalPricePerDay),

          );
        }
      ),
    );
  }
}
