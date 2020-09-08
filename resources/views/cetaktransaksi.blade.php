<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta charset="utf-8">
    <title>Lembar disposisi</title>
  </head>
  <body>
    <div class="box-body">
      <div id='print_area'>
        @foreach ($disposisigeledah as $b)
		
        @endforeach
		<img style="width:80;float:left" src="http://pnbjb-izin.com/public/assets/download.jpg" alt="logo-pn"> 
        <h1>
            <center><b><font size="5" face="arial">PENGADILAN NEGERI BANJARBARU</font></b></center>
        </h1>

        <h1> 
            <center><b><font size="5" face="arial">KELAS II B</font></b></center>
        </h1> 
        <center><font size="4" face="Courier New">
            Jalan Trikora No. 3 Banjarbaru
        </font></center>
        <center><font size="4" face="Courier New">
            Telp: (0511)4782115 | Fax :(0511)4774036
        </font></center>
        <center><font size="3" face="Courier New">
            website : www.pn-banjarbaru.go.id Email: pn.banjarbarukalsel@gmail.com
        </font></center>
     <hr><b width="100" height="200">
        </b>
     </hr>
            </tr>
  			 <p align="center"><u>LEMBAR DISPOSISI</u></p> 

        <table class="table" border="0" cellpadding="0">
          <tr>
            <td colspan="4">
			  <<strong> No Urut   : {{$b->id}}</strong>
			    <br></br>
			  {{-- <strong> Tanggal surat : {{$b->tgl_surat}}</strong>  --}}
			
 <td colspan="4"> {{$b->sifat}}</td>
			 
            </td>
          </tr>
          <tr>
            <td width="3%">1.</td>
            <td width="25%">Tanggal Surat</td>
            <td width="3%">:</td>
            <td width="69%">
              {{$b->tgl_surat}}
            </td>
          </tr>
          <tr>
  					<td>2.</td>
  					<td>Nomor Surat</td>
  					<td>:</td>
  					<td style="text-transform:uppercase">
  						{{$b->id_surat}}
            </td>
				  </tr>
				
				</tr>
				<tr>
					<td>4.</td>
					<td>Asal Surat</td>
					<td>:</td>
					<td>
						{{$b->pemohon }} 
          </td>
				</tr>
				<!--<tr>-->
				<!--	<td>5.</td>-->
				<!--	<td>Alamat</td>-->
				<!--	<td>:</td>-->
				<!--	<td>-->
				<!--		{{$b->alamat}}-->
    <!--      </td>-->
				</tr>
				<tr>
					<td>5.</td>
					<td>Isi Disposisi</td>
					<td>:</td>
					<td>
						{{$b->ringkasan}}
          </td>
				</tr>
				<tr>
					<td>6.</td>
					<td>Informasi</td>
					<td>:</td>
					<td>
						{{$b->catatan}}
          </td>
				</tr>
				<tr>
					<td>7.</td>
					<td>Batas Waktu</td>
					<td>:</td>
					<td>
						{{$b->batas_waktu}}
          </td>
				</tr>
				<tr>
					<td>8.</td>
					<td>Diteruskan Kepada</td>
					<td>:</td>
					<td>{{$b->tujuan}}</td>
				</tr>
				{{-- <tr>
					<td>9.</td>
					<td>Nama Istri / Suami</td>
					<td>:</td>
					<td>{{$b->nama_pasangan}}</td>
				</tr>
				<tr>
					<td colspan="4"></td>
				</tr> --}}
       
				<!--<p align="right">LEMBAR DISPOSISI</p> -->
      
    <td colspan="8" align="right"
			  <strong>TANDA TERIMA </strong> 
			   <br></br>
			    <br></br>
			  <br>_____________</br>
			  <td</td>
  </body> 
</html>
