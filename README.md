# food_e_vending_machine

made for Flutter Mobile Developer Test Case by Ignasius Santoni M Rajagukguk.


## Getting Started
Aplikasi ini di buat dengan metode MVVM/Clean Architecture
1. Screen Pertama

berikut ini adalah tampilan awal yang terlihat saat membuka aplikasi, terdapat pilihan menu chips, wafers and chocolate bars, menu ini dibuat dengan listview.builder dan data yang ditampilkan berasal dari file model dan images.

![Screen1](https://user-images.githubusercontent.com/55431982/192887640-45943b55-b729-426d-91c6-056a9ac9a211.jpg)

2. screen Kedua

setelah user menekan salah satu menu di screen pertama, maka akan muncul screen kedua yang berisi informasi nama produk, gambar, harga, rating, deskripsi dan tombol menambahkan jumlah yang akan di beli, setelah user menentukan jumlah yang akan di beli maka harga produk akan tertera di keterangan "total".

![screen2](https://user-images.githubusercontent.com/55431982/192888946-e042779f-d7be-49d8-8caf-7c8cb0c741c8.jpg)

seperti yang terlihat pada gambar dibawah, jika user menekan tombol kurang pada saat angka sudah "0" maka akan muncul Flutter Toast yang memperingatkan bahwa jumlah yang tampil minimal adalah 0.

![screen2_minus](https://user-images.githubusercontent.com/55431982/192889734-a41d63d4-b4aa-4813-87b6-03b0d5400c2e.jpg)

Jika user menekan tombol "Buy Now" saat jumlah item masih "0" maka akan muncul Flutter Toast seperti yang terlihat pada gambar dibawah.

![screen2_zero](https://user-images.githubusercontent.com/55431982/192890129-9a426e15-a42c-4f98-a6ff-6c2a7957c909.jpg)

3. Screen Ketiga

Setelah user menentukan jumlah item yang akan di beli dan menekan tombol Buy Now, maka user akan diarahkan ke Screen Ketiga yang menampilkan jenis pecahan uang yang akan di input oleh user, sesuai keterangan test case, bahwa E-Vending Machine ini hanya menerima uang pecahan 5000, 10000, 50000 dan 100000.

![screen3](https://user-images.githubusercontent.com/55431982/192890436-5e223cbd-8c24-46d8-b56d-c5893669f15f.jpg)

4. Screen Keempat

Setelah user menentukan jenis pecahan berapa yang akan di input, lalu user diarahkan ke Screen Keempat. Pada Screen Keempat terdapat pilihan jumlah lembar pecahan, total uang yang sudah diinput serta keterangan total tagihan yang harus dibayar oleh user.

![screen4](https://user-images.githubusercontent.com/55431982/192890794-bb8d50df-58e6-4aae-9fcb-b3af5dc5f36d.jpg)

Jika user menekan tombol Check Out saat jumlah uang yang dimasukkan masih kurang, maka akan muncul Flutter Toast yang memperingatkan bahwa uang yang diinput masih belum cukup.

![screen4_not_enough_money](https://user-images.githubusercontent.com/55431982/192891214-09e09593-3d59-48e9-bb84-c866622a4782.jpg)

5. Screen Kelima

Setelah user menginput jumlah uang yang cukup untuk membayar tagihan pembelian, maka selanjutnya user akan diarahkan ke Screen Kelima yang berisi Resi atau Rincian Pembelian dan jika ada uang yang sisa maka akan tertera pada Screen Kelima.

![screen5](https://user-images.githubusercontent.com/55431982/192891699-34112279-6392-4c57-b6b6-c2d9d14ab5ad.jpg)

Demikian keterangan penggunaan aplikasi E-Vending Machine yang saya buat untuk Test Case proses pelamaran Flutter Mobile Developer.
Terimakasih.

