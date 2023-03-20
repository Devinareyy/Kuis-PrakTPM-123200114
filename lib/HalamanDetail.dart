import 'package:flutter/material.dart';
import 'rental_car.dart';

class HalamanDetail extends StatefulWidget {
  final RentalCar mobil;
  const HalamanDetail({Key? key, required this.mobil}) : super(key: key);

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.mobil.brand),
            Text(' '),
            Text(widget.mobil.model)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder:
                      (context, index) =>
                          Image.network(widget.mobil.images[index]),
                  itemCount: 3,
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.mobil.brand, style: TextStyle(fontSize: 20)),
                  Text(widget.mobil.model, style: TextStyle(fontSize: 20))
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Brand      : '),
                      Text('Model      : '),
                      Text('Tahun      : '),
                      Text('Biaya Sewa : '),
                      Text('Status     : '),
                    ],
                  ),
                  Column(
                    children: [
                      Text(widget.mobil.brand),
                      Text(widget.mobil.model),
                      Text(widget.mobil.year.toString()),
                      Text(widget.mobil.rentalPricePerDay),
                      Text(widget.mobil.model),
                      //if(widget.mobil.available = true){}
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: (){},
                  child: Text('Pesan'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child:
                Text(widget.mobil.description),
              )
            ],
          ),
        ),
      ),
    );
  }
}
