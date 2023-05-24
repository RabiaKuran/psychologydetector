# psychologydetector
Human face analysis
Yapa zekayı kullanarak insanların yüz ifadesini algılama işlemi. İlk olarak teachable machine’yi kullanarak toplam 9904 fotoğraf kullanarak makinemi eğittim. 
Eğitme kısmını tamamladıktan sonra indirme işlemini gerçekleştirdim. İndirdiğim .rar dosyasının içinde ‘model_unquant.tflite’ ve ‘labels.txt’ olmak üzere 2 dosyam oluştu. 
Labels dosyamda ayırdığım başlık bilgileri bulunmakta. 
Bu sayfanın içinde kişinin görüntüsü alınacak, alınan görüntü tflite modelinde işlenerek modelde mod tespiti yapılacak, kişinin duygu durum bilgisi modelden alınacaktır. 
Alınan veriler sonucunda kişinin durum bilgisine göre mutlu mu, üzgün mü, kaygılı mı vs. buna göre uygun mesaj bilgisi kullanıcıya verilecek. 
Kullanıcının fotoğrafı ekleyebilmesi için 2 seçeneği var. İster kameradan anlık olarak çeker isterse galeriden önceden kaydettiği fotoğrafı çekebilir. 
<img src="https://github.com/RabiaKuran/drawing-on-screen-project/blob/main/screen.png" width="auto">
