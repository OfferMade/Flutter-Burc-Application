import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_10/burc_item.dart';
import 'package:flutter_application_10/modeller/burc.dart';
import 'package:flutter_application_10/data/strings.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar = [];
  BurcListesi(){
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar);
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burclar Listesi"),
        ),
      body:Center(
      child: ListView.builder(itemBuilder: ((context, index) {
        return BurcItem(listelenenBurc: tumBurclar[index]);
      }), itemCount: tumBurclar.length,),
      ), 
    );
  }
  
  List<Burc> veriKaynaginiHazirla() {

    List<Burc> gecici = [];
    for(int i=0;i<12;i++){
      var burcAdi= Strings.BURC_ADLARI[i];
      var burcTarih= Strings.BURC_TARIHLERI[i];
      var burcDetay= Strings.BURC_GENEL_OZELLIKLERI[i];
      //koc1.png olursturmak
      var kucukresim= 
        Strings.BURC_ADLARI[i].toLowerCase() + '${i+1}.png';
      var buyukresim=
        Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i+1}.png';
      Burc eklenecekBurc = Burc(burcAdi,burcTarih,burcDetay,kucukresim,buyukresim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
