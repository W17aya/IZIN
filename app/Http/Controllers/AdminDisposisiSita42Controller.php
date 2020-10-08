<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;
	use PDF;

	class AdminDisposisiSita42Controller extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = true;
			$this->button_delete = true;
			$this->button_detail = true;
			$this->button_show = false;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = true;
			$this->table = "disposisi_sita";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Ditujukkan kepada","name"=>"tujuan"];
			$this->col[] = ["label"=>"No Surat","name"=>"id_surat"];
			$this->col[] = ["label"=>"Isi Disposisi","name"=>"isi_disposisi"];
			$this->col[] = ["label"=>"Sifat","name"=>"sifat"];
			$this->col[] = ["label"=>"Batas Waktu","name"=>"batas_waktu"];
			$this->col[] = ["label"=>"Catatan","name"=>"catatan"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Id Surat','name'=>'Id','type'=>'datamodal','validation'=>'required|required','width'=>'col-sm-10','datamodal_table'=>'sita','datamodal_columns'=>'id,no_surat,tgl_surat,pemohon','datamodal_columns_alias'=>'id,No surat,Tanggal surat, Asal surat','datamodal_select_to'=>'Id:Id,pemohon:pemohon,tgl_surat:tgl_surat,no_surat:id_surat'];
			$this->form[] = ['label'=>'Tujuan','name'=>'tujuan','type'=>'select2','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'PANITERA;PANMUD PIDANA;PANMUD PERDATA'];
			$this->form[] = ['label'=>'Asal Surat','name'=>'pemohon','type'=>'text','validation'=>'required','width'=>'col-sm-9','placeholder'=>'Pilih data diatas!','readonly'=>'true'];
			$this->form[] = ['label'=>'Nomer Surat','name'=>'id_surat','type'=>'text','validation'=>'required','width'=>'col-sm-9','placeholder'=>'Pilih data diatas!','readonly'=>'true'];
			$this->form[] = ['label'=>'Tgl Surat','name'=>'tgl_surat','type'=>'date','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Isi Disposisi','name'=>'isi_disposisi','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Sifat','name'=>'sifat','type'=>'select2','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'BIASA;RAHASIA;PENTING'];
			$this->form[] = ['label'=>'Batas Waktu','name'=>'batas_waktu','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Catatan','name'=>'catatan','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'Segera di proses; Tolong di periksa kembali'];
			$this->form[] = ['label'=>'ringkasan','name'=>'ringkasan','type'=>'textarea','validation'=>'required','width'=>'col-sm-9'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Id Surat','name'=>'id','type'=>'datamodal','validation'=>'required|required','width'=>'col-sm-10','datamodal_table'=>'geledah','datamodal_columns'=>'id,no_surat,tgl_surat,pemohon','datamodal_columns_alias'=>'id,No surat,Tanggal surat, Asal surat','datamodal_select_to'=>'pemohon:pemohon,tgl_surat:tgl_surat,no_surat:id_surat'];
			//$this->form[] = ['label'=>'Tujuan','name'=>'tujuan','type'=>'select2','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'PANITERA;PANMUD PIDANA;PANMUD PERDATA'];
			//$this->form[] = ['label'=>'Asal Surat','name'=>'pemohon','type'=>'text','validation'=>'required','width'=>'col-sm-9','placeholder'=>'Pilih data diatas!','readonly'=>'true'];
			//$this->form[] = ['label'=>'Nomer Surat','name'=>'id_surat','type'=>'text','validation'=>'required','width'=>'col-sm-9','placeholder'=>'Pilih data diatas!','readonly'=>'true'];
			//$this->form[] = ['label'=>'Tgl Surat','name'=>'tgl_surat','type'=>'date','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Isi Disposisi','name'=>'isi_disposisi','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Sifat','name'=>'sifat','type'=>'select2','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'BIASA;RAHASIA;PENTING'];
			//$this->form[] = ['label'=>'Batas Waktu','name'=>'batas_waktu','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Catatan','name'=>'catatan','type'=>'select','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'Segera di proses; Tolong di periksa kembali'];
			//
			//$this->form[] = ['label'=>'Keterangan','name'=>'keterangan','type'=>'textarea','validation'=>'required|string|min:5|max:5000','width'=>'col-sm-10'];
			//
			//$this->form[] = ['label'=>'ringkasan','name'=>'ringkasan','type'=>'textarea','validation'=>'required','width'=>'col-sm-9'];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();
            $this->addaction[] = ['label'=>'print','icon'=>'fa fa-print','color'=>'primary','url'=>CRUDBooster::mainpath('cetak/[id]')];

	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }
	     public function getCetak($id){
		$data['disposisisita'] = DB::table('disposisi_sita')
				// 	->join('suplier', 'transaksipembelian.suplier', '=', 'suplier.id')
					->where('disposisi_sita.id',$id)
					->get();
// 		$data['detail_transaksipembelian'] = DB::table('detail_transaksipembelian')
// 					->where('transaksipembelian_id',$id)
// 					->get();
		$pdf = PDF::loadView('disposisisita',$data)
					->setPaper('a4', 'potrait');
		  
					  
		return $pdf->stream('lembar_disposisi.pdf');
		
	     }



	    //By the way, you can still create your own method in here... :) 


	}