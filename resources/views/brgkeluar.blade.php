<head>
    <title>Laporan</title>
  </head>
<body>
@foreach($geledah as $datanya)

@endforeach
<img style="width:80;float:left" src="https://adap.borneokoding.org/uploads/2019-12/17487c2e7565ee1683f64acb02093e9f.png" alt="logo-kalsel">    
<center>
<p style="text-align:center;text-transform: uppercase;">
	PEMERINTAH KOTA BANJARBARU
      </p>
      <p style="text-align:center;text-transform: uppercase;margin-top:-15px;font-size:25px">
        DINAS KOMUNIKASI DAN INFORMATIKA
      </p>
      <p style="text-align:center;margin-top:-15px">
	Gedung Diskominfo Banjarbaru Jl. Pangeran Suriansyah no.5
      </p>
      <p style="text-align:center;margin-top:-15px">
	Loktabat Utara, Banjarbaru Utara Kota Banjarbaru,70711 Kalimantan Selatan, Indonesia
      </p>
	  <p style="text-align:center;margin-top:-15px">
	  Email: kominfobjb@banjarbarukota.go.id | Telpon/Fax: 0511-6749126
      </p>
<hr>
No.{{date("d/m/y",strtotime($datanya->date))}}/bjb/00{{$datanya->id}}
</center>
<br>
Berikut adalah detail barang yang keluar pada tanggal <strong>{{date("d/m/Y",strtotime($datanya->date))}}</strong>:
<br><br>
<table>
<tr><td >Nama</td><td >:</td><td>{{$datanya->nama}}</td></tr>
<tr><td >Status</td><td >:</td><td >{{$datanya->jenis}}</td></tr>
<tr><td >Keterangan</td><td >:</td><td >{{$datanya->keterangan}}</td></tr>
<tr><td >Jumlah</td><td >:</td><td >{{$datanya->jumlah}}</td></tr>
</table>
<br>
Harap gunakan dokumen ini dengan bijak.
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<p align="right">Verifikasi dokumen ini:</p>
<p align="right" style="margin-top:-15px">http://project.org/admin/barang_keluar30/cetak/{{$datanya->id}}</p>