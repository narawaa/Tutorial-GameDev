Nama: Nashwa Ghania <br/>
NPM: 2306241770

**Latihan 1:**<br/>
Pada saat playtest, ketika landasan digerakkan ke atas hingga pesawat menyentuh area atas, pada panel Output muncul pesan “Reached objective!”. Pesan ini tercetak karena objek BlueShip memasuki ObjectiveArea yang menggunakan Area2D dan signal body_entered. Ketika dari bawah digerakkan kembali ke atas dan pesawat masuk lagi ke area tersebut, pesan yang sama akan muncul kembali. Namun saat landasan digerakkan ke batas bawah, tidak ada pesan yang dicetak karena tidak terdapat area atau signal yang terpicu di bagian bawah. Dari tampilan 2D scene MainLevel, terlihat bahwa ObjectiveArea memang berada di bagian atas sehingga setiap kali pesawat masuk ke area tersebut, fungsi pada ObjectiveArea.gd dijalankan dan mencetak log.

<br/>

**Latihan 2:**<br/>

1. **Fungsi Sprite2D**<br/>
   Sprite2D berfungsi untuk menampilkan gambar atau visual objek. Pada BlueShip menampilkan gambar pesawat, sedangkan pada StonePlatform menampilkan gambar platform.

2. **Perbedaan RigidBody2D dan StaticBody2D**<br/>
   BlueShip menggunakan RigidBody2D sehingga dipengaruhi sistem physics seperti gravitasi dan gaya. StonePlatform menggunakan StaticBody2D sehingga tidak terpengaruh physics dan berperan sebagai objek diam untuk tumbukan.

3. **Perubahan Mass (1 kg -> 1000 kg)**<br/>
   Perubahan massa tidak terlihat signifikan saat dijalankan. Secara teori massa memengaruhi respons terhadap gaya, namun pada percobaan ini perbedaannya tidak terlalu terasa secara visual.

4. **CollisionShape2D Disabled pada StonePlatform**<br/>
   Saat atribut Disabled diaktifkan, pesawat menembus platform dan jatuh ke bawah karena collision tidak aktif. Platform tetap bisa digerakkan karena pergerakannya berasal dari script, bukan dari sistem collision.

5. **Manipulasi Position, Rotation, dan Scale BlueShip**<br/>
   Perubahan ketiga atribut tersebut langsung terlihat pada Viewport. Posisi berpindah, rotasi berputar, dan skala membesar atau mengecil sesuai nilai yang diubah.

6. **Position StonePlatform dan StonePlatform2**<br/>
   Nilai Position terlihat tidak sesuai karena keduanya merupakan child dari PlatformBlue. Position yang ditampilkan adalah posisi relatif terhadap parent, bukan posisi global. Secara visual tetap benar karena transform parent ikut memengaruhi posisi akhirnya.
