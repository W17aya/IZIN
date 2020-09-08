<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta charset="utf-8">
    <title>BIODATA PEGAWAI</title>
  </head>
  <body>
    <div class="box-body">
      <div id='print_area'>
        @foreach ($biodata as $b)
		
        @endforeach
        <center><img src="https://adap.borneokoding.org/{{$b->foto}}" width="91" height="116"></center>
  			<p align="center"><strong>SATUAN POLISI PAMONG PRAJA</strong>
  				<br/><strong>KOTA BANJARBARU</strong>
  			</p>
  			<p align="center"><u>BIODATA SATLINMAS </u></p>

        <table class="table" border="0" cellpadding="0">
          <tr>
            <td colspan="4">
              <strong>A. IDENTITAS SATLINMAS</strong>
            </td>
          </tr>
          <tr>
            <td width="3%">1.</td>
            <td width="25%">NIK</td>
            <td width="3%">:</td>
            <td width="69%">
              {{$b->nik}}
            </td>
          </tr>
          <tr>
  					<td>2.</td>
  					<td>Nama Lengkap</td>
  					<td>:</td>
  					<td style="text-transform:uppercase">
  						{{$b->nama}}
            </td>
				  </tr>
				<tr>
					<td>3.</td>
					<td>Tempat / Tanggal Lahir</td>
					<td>:</td>
					<td>
						{{$b->tempat_lahir}}, {{date("d ",strtotime($b->tgl_lahir))}}
                        @if(date("m",strtotime($b->tgl_lahir)) == 1)
                        Januari
                        @elseif(date("m",strtotime($b->tgl_lahir)) == 2)
                        Februari
                        @elseif(date("m",strtotime($b->tgl_lahir)) == 3)
                        Maret
                        @elseif(date("m",strtotime($b->tgl_lahir)) == 4)
                        April
                        @elseif(date("m",strtotime($b->tgl_lahir)) == 5)
                        Mei
                        @elseif(date("m",strtotime($b->tgl_lahir)) == 6)
                        Juni
                        @elseif(date("m",strtotime($b->tgl_lahir)) == 7)
                        Juli
                        @elseif(date("m",strtotime($b->tgl_lahir)) == 8)
                        Agustus
                        @elseif(date("m",strtotime($b->tgl_lahir)) == 9)
                        September
                        @elseif(date("m",strtotime($b->tgl_lahir)) == 10)
                        Oktober
                        @elseif(date("m",strtotime($b->tgl_lahir)) == 11)
                        November
                        @else
                        Desember
                        @endif
                        {{date(" Y",strtotime($b->tgl_lahir))}}
						
          </td>
				</tr>
				<tr>
					<td>4.</td>
					<td>Jenis Kelamin</td>
					<td>:</td>
					<td>
						{{$b->jenis_kelamin}}
          </td>
				</tr>
				<tr>
					<td>5.</td>
					<td>Agama</td>
					<td>:</td>
					<td>
						{{$b->agama}}
          </td>
				</tr>
				<tr>
					<td>6.</td>
					<td>Status Perkawinan</td>
					<td>:</td>
					<td>
						{{$b->status_perkawinan}}
          </td>
				</tr>
				<tr>
					<td>7.</td>
					<td>Alamat Tinggal</td>
					<td>:</td>
					<td>
						{{$b->alamat_tinggal}}
          </td>
				</tr>
				<tr>
					<td>8.</td>
					<td>Golongan Darah</td>
					<td>:</td>
					<td>{{$b->gol_darah}}</td>
				</tr>
				<tr>
					<td>9.</td>
					<td>Nama Istri / Suami</td>
					<td>:</td>
					<td>{{$b->nama_pasangan}}</td>
				</tr>
				<tr>
					<td colspan="4"></td>
				</tr>
        <tr>
					<td colspan="4"><strong>B. TEMPAT BEKERJA  SATLINMAS</strong>
					</td>
				</tr>
				<tr>
					<td>1.</td>
					<td>Instansi Induk</td>
					<td>:</td>
					<td>
						Kelurahan</td>
				</tr>
				<tr>
					<td>2.</td>
					<td>Lokasi</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>a. Propinsi</td>
					<td>:</td>
					<td>
						KALIMANTAN SELATAN</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>b. Kabupaten / Kota</td>
					<td>:</td>
					<td>
						KOTA BANJARBARU</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>c. Kecamatan</td>
					<td>:</td>
					<td>{{$b->kecamatan_kantor}}</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>d. Kelurahan / Desa</td>
					<td>:</td>
					<td>{{$b->kelurahan_kantor}}</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>e. Alamat / Jalan</td>
					<td>:</td>
					<td>{{$b->alamat_kantor}}</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>f. No. Telepon Kantor</td>
					<td>:</td>
					<td>{{$b->telepon_kantor}}</td>
				</tr>
				<tr>
					<td colspan="4"></td>
				</tr>
        <tr>
					<td colspan="4"><strong>C. JABATAN  SATLINMAS SAAT INI</strong>
					</td>
				</tr>
				<tr>
					<td>1.</td>
					<td>Pejabat yang menetapkan</td>
					<td>:</td>
					<td>{{$b->pejabat_penetap}}</td>
				</tr>
				<tr>
					<td>2.</td>
					<td>Surat Keputusan Jabatan</td>
					<td>:</td>
					<td>Nomor :{{$b->sk_jabatan}}
						&nbsp;&nbsp;&nbsp;&nbsp;Tanggal
						:{{$b->tgl_sk_jabatan}}</td>
				</tr>
				<tr>
					<td>3.</td>
					<td>Jenis Jabatan</td>
					<td>:</td>
					<td>{{$b->jenis_jabatan}}</td>
				</tr>
				<tr>
					<td>4.</td>
					<td>SK Pelantikan</td>
					<td>:</td>
					<td>Nomor :{{$b->sk_pelantikan}}
						&nbsp;&nbsp;&nbsp;&nbsp;Tanggal
						:{{$b->tgl_sk_pelantikan}}</td>
				</tr>
				<tr>
					<td>5</td>
					<td>TMT Jabatan</td>
					<td>:</td>
					<td>{{$b->tmt_jabatan}}</td>
				</tr>
				<tr>
					<td colspan="4"></td>
				</tr>
        </table>
        <table class="table" border="0" cellpadding="0">
          <tr>
  			<td colspan="4"><strong>D. PENGALAMAN BEKERJA SEBELUM MASUK SATLINMAS</strong>
  			</td>
  				</tr>
  				<tr>
  					<td colspan="4">
  						<table class="table table-striped table-bordered" >
  							<thead>
  							<tr>
  								<th>
  									<p align="center">INSTANSI/PERUSAHAAN</p>
  								</th>
  								<th>
  									<p align="center">KEDUDUKAN/JABATAN</p>
  								</th>
  								<th>
  									<p align="center">TANGGAL MASUK</p>
  								</th>
  								<th>
  									<p align="center">TANGGAL BERHENTI</p>
  								</th>
  							</tr>
  							</thead>
                <tbody>
                  @foreach ($pengalaman_kerja as $kerja)
                  <tr>
                    <td>{{$kerja->nama_kantor}}</td>
                    <td>{{$kerja->jabatan}}</td>
                    <td>{{$kerja->tanggal_masuk}}</td>
                    <td>{{$kerja->tanggal_berhenti}}</td>
                  </tr>
                  @endforeach
                </tbody>
  						</table>
  					</td>
  				</tr>
  				<tr>
  					<td colspan="4"></td>
  				</tr>
        </table>
        <table class="table" border="0" cellpadding="0">
          <tr>
					<td colspan="4"><strong>E. RIWAYAT PENDIDIKAN UMUM</strong>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<table class="table table-striped table-bordered" >
							<thead>
                <tr>
  								<th rowspan="2" width="1%" style="font-size:11pt">
  									<p align="center">PENDIDIKAN</p>
  								</th>
  								<th rowspan="2" style="font-size:11pt">
  									<p align="center">JURUSAN</p>
  								</th>
  								<th rowspan="2" style="font-size:11pt">
  									<p align="center">NAMA SEKOLAH / PTS / PTN</p>
  								</th>
  								<th rowspan="2" style="font-size:11pt">
  									<p align="center">TEMPAT</p>
  								</th>
  								<th  rowspan="2" width="15%" style="font-size:11pt">
  									<p align="center">NAMA KEPALA SEKOLAH / REKTOR</p>
  								</th>
  								<th  colspan="2" style="font-size:11pt">
  									<p align="center">S T T B</p>
  								</th>
  							</tr>
							<tr>
								<th style="font-size:11pt">
									<p align="center">NOMOR</p>
								</th>
								<th style="font-size:11pt">
									<p align="center">TANGGAL</p>
								</th>
							</tr>
							</thead>
							<tbody>
                @foreach ($riwayat_pendidikan as $pendidikan)
                <tr>
                  <td style="font-size:11pt">{{$pendidikan->tingkat_pendidikan}}</td>
                  <td style="font-size:11pt">{{$pendidikan->jurusan}}</td>
                  <td style="font-size:11pt">{{$pendidikan->institusi}}</td>
                  <td style="font-size:11pt">{{$pendidikan->lokasi}}</td>
                  <td style="font-size:11pt">{{$pendidikan->pimpinan}}</td>
                  <td style="font-size:11pt">{{$pendidikan->nomor_sttb}}</td>
                  <td style="font-size:11pt">{{$pendidikan->tanggal_sttb}}</td>
                </tr>
                @endforeach
              </tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="4"></td>
				</tr>
        </table>

        <table class="table" border="0" cellpadding="0">
          <tr>
					<td colspan="4"><strong>F. SUSKALAK / DIKLAT / BINTEK YANG SUDAH DIIKUTI</strong>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<table class="table table-striped table-bordered" >
							<thead>
                <tr>
  								<th rowspan="2" style="font-size:11pt">
  									<p align="center">JENIS SUSKALAK / DIKLAT</p>
  								</th>
  								<th rowspan="2" style="font-size:11pt">
  									<p align="center">PENYELENGGARA</p>
  								</th>
  								<th rowspan="2" style="font-size:11pt">
  									<p align="center">LOKASI</p>
  								</th>
  								<th  rowspan="2" width="15%" style="font-size:11pt">
  									<p align="center">WAKTU PELAKSANAAN</p>
  								</th>
  								<th  colspan="2" style="font-size:11pt">
  									<p align="center">SERTIFIKAT</p>
  								</th>
  							</tr>
							<tr>
								<th style="font-size:11pt">
									<p align="center">NOMOR</p>
								</th>
								<th style="font-size:11pt">
									<p align="center">TANGGAL</p>
								</th>
							</tr>
							</thead>
							<tbody>
                @foreach ($diklat as $dklt)
                <tr>
                  <td style="font-size:11pt">{{$dklt->jenis_kegiatan}}</td>
                  <td style="font-size:11pt">{{$dklt->penyelenggara}}</td>
                  <td style="font-size:11pt">{{$dklt->lokasi}}</td>
                  <td style="font-size:11pt">{{$dklt->waktu_pelaksanaan}}</td>
                  <td style="font-size:11pt">{{$dklt->no_sertifikat}}</td>
                  <td style="font-size:11pt">{{$dklt->tanggal_sertifikat}}</td>
                </tr>
                @endforeach
              </tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="4"></td>
				</tr>
        </table>

        <table class="table" border="0" cellpadding="0">
          <tr>
					<td colspan="4"><strong>G. DATA ANAK</strong>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<table class="table table-striped table-bordered" >
							<thead>
							<tr>
								<th width="40%">
									<p align="center">NAMA LENGKAP</p>
								</th>
								<th width="30%">
									<p align="center">TEMPAT / TANGGAL LAHIR</p>
								</th>
								<th>
									<p align="center">JENIS KELAMIN</p>
								</th>
							</tr>
							</thead>
							<tbody>
                @foreach ($anak as $ank)
                <tr>
                  <td style="font-size:11pt">{{$ank->nama_anak}}</td>
                  <td style="font-size:11pt">{{$ank->jenis_kelamin}}</td>
                  <td style="font-size:11pt">{{$ank->tempat_lahir}}, {{$ank->tanggal_lahir}}</td>
                </tr>
                @endforeach
              </tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="4"></td>
				</tr>
        </table>

        <table class="table" border="0" cellpadding="0">
          <tr>
					<td colspan="4"><strong>H. DATA ORANG TUA KANDUNG</strong>
					</td>
				</tr>
				<tr>
					<td>1.</td>
					<td>Nama Ayah</td>
					<td>:</td>
					<td>{{$b->nama_ayah}}</td>
				</tr>
				<tr>
					<td>2.</td>
					<td>Tempat / Tanggal Lahir</td>
					<td>:</td>
					<td>{{$b->tempat_lahir_ayah}}, {{$b->tgl_lahir_ayah}}</td>
				</tr>
				<tr>
					<td>3.</td>
					<td>Pekerjaan</td>
					<td>:</td>
					<td>{{$b->pekerjaan_ayah}}</td>
				</tr>
				<tr>
					<td>4.</td>
					<td>Alamat</td>
					<td>:</td>
					<td>{{$b->alamat_ayah}}</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td colspan="3">
						<hr>
					</td>
				</tr>
				<tr>
					<td>1.</td>
					<td>Nama Ibu</td>
					<td>:</td>
					<td>{{$b->nama_ibu}}</td>
				</tr>
				<tr>
					<td>2.</td>
					<td>Tempat / Tanggal Lahir</td>
					<td>:</td>
					<td>{{$b->tempat_lahir_ibu}}, {{$b->tgl_lahir_ibu}}</td>
				</tr>
				<tr>
					<td>3.</td>
					<td>Pekerjaan</td>
					<td>:</td>
					<td>{{$b->pekerjaan_ibu}}</td>
				</tr>
				<tr>
					<td>4.</td>
					<td>Alamat</td>
					<td>:</td>
					<td>{{$b->alamat_ibu}}</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
        </table>
      </div>
    </div>
  </body>
</html>
