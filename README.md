# pbp-flutter-lab

**1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.**<br>
Stateles widget merupakan widget yang tidak dapat berubah-ubah, misalnya seperti Icon, IconButton, dan Text. Berkebalikan dengan stateless widiget, stateful widget dapat berubah-ubah secara dinamis. Perubahan tersebut bisa dipicu dengan event yang di-trigger dari interaksi penggguna atau ketika menerima suatu data. Beberapa contohnya yaitu Checkbox, FloatingActionButton, Slider, dll.

**2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**
    * FloatingActionButton: button yang apabila ditekan akan mentriger fungsi incrementCounter untuk menaikkan nilai counter.
    * Visibility: button "-" yang akan disembunyikan ketika counter bernilai 0
    * Text: Untuk menampilkan nilai counter saat ini dan ganjil/genap.

**3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**<br>
Untuk memberi tahu framework bahwa state dari suatu objek telah berubah. Dalam tugas ini, misalnya pada nilai counter yang akan berubah setelah tombol ditekan. Fungsi yang berkaitan dengan tombol tersebut menggunakan setState() untuk mengubah nilai counter dengan cara menaikkan atau menurunkannya.

**4. Jelaskan perbedaan antara const dengan final.**
Secara singkat, const berarti nilai yang disimpan dalam variabelnya harus bersifat tetap dan tidak dapat bersifat dinamis. Final pun juga harus bersifat tetap, tetapi nilai yang disimpan bisa berupa dynamic value.

**5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**
    * Membuat fungsi tambahan _decrementCounter untuk mengurangi nilai counter.
    * Membuat widget FloatingActionButton untuk tombol menaikkan counter dan Visibility (dengan child FloatingActionButton juga) untuk menurunkan counter lalu menghubungkannya dengan fungsi _decrementCounter. Widget Visibility ini akan memiliki status visible berupa false ketika counter-nya bernilai 0 sehingga tombol "-" akan disembunyikan.
    * Membuat widget Text untuk menampilkan counter dan status genap (merah) atau ganjil (biru). Teks yang muncul hanya bisa salah satunya berdasarkan nilai counter saat ini apakah %2 == 0 ?