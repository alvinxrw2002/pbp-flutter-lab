### Nama: Alvin X.R.W.
### NPM: 2106750300
### Kelas: E

# Tugas 7

**1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.**<br>
Stateles widget merupakan widget yang tidak dapat berubah-ubah, misalnya seperti Icon, IconButton, dan Text. Berkebalikan dengan stateless widiget, stateful widget dapat berubah-ubah secara dinamis. Perubahan tersebut bisa dipicu dengan event yang di-trigger dari interaksi penggguna atau ketika menerima suatu data. Beberapa contohnya yaitu Checkbox, FloatingActionButton, Slider, dll.

**2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**
- FloatingActionButton: button yang apabila ditekan akan mentriger fungsi incrementCounter untuk menaikkan nilai counter.
- Visibility: button "-" yang akan disembunyikan ketika counter bernilai 0
- Text: Untuk menampilkan nilai counter saat ini dan ganjil/genap.

**3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**<br>
Untuk memberi tahu framework bahwa state dari suatu objek telah berubah. Dalam tugas ini, misalnya pada nilai counter yang akan berubah setelah tombol ditekan. Fungsi yang berkaitan dengan tombol tersebut menggunakan setState() untuk mengubah nilai counter dengan cara menaikkan atau menurunkannya.

**4. Jelaskan perbedaan antara const dengan final.**<br>
Secara singkat, const berarti nilai yang disimpan dalam variabelnya harus bersifat tetap dan tidak dapat bersifat dinamis. Final pun juga harus bersifat tetap, tetapi nilai yang disimpan bisa berupa dynamic value.

**5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**
* Membuat fungsi tambahan _decrementCounter untuk mengurangi nilai counter.
* Membuat widget FloatingActionButton untuk tombol menaikkan counter dan Visibility (dengan child FloatingActionButton juga) untuk menurunkan counter lalu menghubungkannya dengan fungsi _decrementCounter. Widget Visibility ini akan memiliki status visible berupa false ketika counter-nya bernilai 0 sehingga tombol "-" akan disembunyikan.
* Membuat widget Text untuk menampilkan counter dan status genap (merah) atau ganjil (biru). Teks yang muncul hanya bisa salah satunya berdasarkan nilai counter saat ini apakah %2 == 0 ?

---

# Tugas 8

**1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.**<br>
Navigator.pushReplacement melakukan pergantian halaman dengan cara melakukan pop terlebih dahulu halaman yang ada saat ini dari stack, kemudian melakukan push terhadap halaman yang dituju (seperti mengganti elemen teratas pada stack dengan halaman baru), sedangkan Navigator.push langsung melakukan push terhadap stack halaman tanpa melakukan pop sehingga halaman sebelumnya masih tetap ada dalam stack.

**2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**
- Form: Menerima input budget dari pengguna
- ListTile: Menampilkan seluruh halaman pada drawer,
- Column: Menempatkan seluruh widget-widget children-nya dalam suatu kolom.
- Padding: Memberikan padding kepada widget child-nya.
- DropdownButton: Menu dropdown untuk memilih jenis budget.
- DropdownButtonHideUnderline: Menyembunyikan garis bawah pada menu dropdown.
- TextButton: Tombol untuk menyimpan input form.
- Spacer: Memberi jarak untuk tombol simpan sampai ke bawah.
- Card: Menampilkan seluruh data budget di halaman data budget.

**3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).**<br>
Ada banyak jenis event di Flutter. Beberapa diantaranya:
- onPressed
- onChange
- onSave

, dan beberapa gestur seperti:
- onTap
- onDoubleTap
- onLongPress

**4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.**<br>
Navigator memanfaatkan struktur data stack. Untuk berpindah ke halaman yang baru, halaman baru tersebut akan di-push ke dalam stack, sementara untuk kembali ke halaman sebelumnya, akan dilakukan operasi pop.

**5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**<br>
Secara garis besar, implementasinya terdiri dari:
* Membuat model class baru untuk membuat dan menyimpan objek budget.
* Menambahkan model list untuk menyimpan seluruh objek-objek budget yang telah dibuat tadi dan menampilkannya dalam widget-widget.
* Membuat halaman form untuk menyimpan input pengguna. Input pengguna ini nantinya akan dibuat menjadi objek budget dan disimpan dalam model list-nya sehingga bisa ditampilkan di halaman daftar budget.
* Membuat drawer secara terpisah yang dapat mengarahkan ke tiga halaman tersebut, yaitu halaman utama (counter 7), form untuk menambah budget, dan daftar budget