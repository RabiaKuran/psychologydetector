# psychologydetector
Human face analysis,
Yapa zekayı kullanarak insanların yüz ifadesini algılama işlemi. İlk olarak teachable machine’yi kullanarak toplam 9904 fotoğraf kullanarak makinemi eğittim. 
Eğitme kısmını tamamladıktan sonra indirme işlemini gerçekleştirdim. İndirdiğim .rar dosyasının içinde ‘model_unquant.tflite’ ve ‘labels.txt’ olmak üzere 2 dosyam oluştu. 
Labels dosyamda ayırdığım başlık bilgileri bulunmakta. 
Bu sayfanın içinde kişinin görüntüsü alınacak, alınan görüntü tflite modelinde işlenerek modelde mod tespiti yapılacak, kişinin duygu durum bilgisi modelden alınacaktır. 
Alınan veriler sonucunda kişinin durum bilgisine göre mutlu mu, üzgün mü, kaygılı mı vs. buna göre uygun mesaj bilgisi kullanıcıya verilecek. 
Kullanıcının fotoğrafı ekleyebilmesi için 2 seçeneği var. İster kameradan anlık olarak çeker isterse galeriden önceden kaydettiği fotoğrafı seçebilir.

<img src="https://github.com/RabiaKuran/psychologydetector/blob/main/screen1.jpg" height="600">          <img src="https://github.com/RabiaKuran/psychologydetector/blob/main/Screen3.jpg" height="600"> <img src="https://github.com/RabiaKuran/psychologydetector/blob/main/Screen2.jpg" height="600"> <img src="https://github.com/RabiaKuran/psychologydetector/blob/main/Screen2.jpg" height="600">


Eğittiğim modelimi Visual Studio Code uygulaması içinde bulunan uygulamamın assets klasörünün içerisine gömdüm. TensorFlow uygulamasının çalışabilmesi için ilk önce pubspec.yaml dosyasına ‘tflite:’ paketini ve assets(varlıklar) kısmına modelinin ve labellerin yollarını ayrı ayrı göstererek ekledim. İkinci olarak android/app/build.gradle yoluna 

    aaptOptions {
        noCompress 'tflite'
        noCompress 'lite'
    }   kodu'nu ekledim.

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donemuygulamam/servisler/yetkilendirmeservisi.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
TensorFlow.dart dosyama gerekli paketleri yukarıda görüldüğü gibi ekledim. Firebase veri tabanından gerekli durumlar halinde veri çekeceğim için fire store paketini import ettim. 
