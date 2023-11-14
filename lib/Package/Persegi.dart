import 'package:bangun_datar_app/Controler/PersegiControler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Persegi extends StatelessWidget {
  Persegi ({super.key});
  final PersegiController _persegiController = Get.put(PersegiController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Persegi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/segitiga.png",
            height: 120,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi"),
          ),
          Text("bentuk dua dimensi dari bangun-bangun yang mempunyai permukaan datar pada luas, panjang, lebar, dan kelilingnya."),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            onChanged: (value) {
              _persegiController.sisi=int.parse(value);
            } ,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'label',
                  hintText: 'hint',
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10))))
          ),
        ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: (){
                _persegiController.hitungLuas();
              }, child: Text("Hitung Luas")),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange
              ),
              onPressed: (){
                _persegiController.hitungKeliling();
              }, child: Text("Hitung Keliling")),
        ],
      ),
        Obx(()=> Text(_persegiController.hasil.value))
        ],
      ),
    );
}
}
