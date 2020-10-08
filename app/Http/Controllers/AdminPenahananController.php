<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminPenahananController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = false;
			$this->button_bulk_action = false;
			$this->button_action_style = "button_icon";
			$this->button_add = true;
			$this->button_edit = false;
			$this->button_delete = false;
			$this->button_detail = false;
			$this->button_show = false;
			$this->button_filter = false;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "penahanan";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Tgl Surat","name"=>"tgl_surat"];
			$this->col[] = ["label"=>"No Surat","name"=>"no_surat"];
			$this->col[] = ["label"=>"Penyidik","name"=>"pemohon"];
			$this->col[] = ["label"=>"Pemohon","name"=>"id_penyidik","join"=>"cms_users,id_instansi"];
			$this->col[] = ["label"=>"Jenis Surat","name"=>"jenis_surat"];
			$this->col[] = ["label"=>"Status","name"=>"status"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'No Surat','name'=>'no_surat','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Pemohon','name'=>'pemohon','type'=>'hidden','validation'=>'required','width'=>'col-sm-10','value'=>CRUDBooster::myName()];
			$this->form[] = ['label'=>'Instansi','name'=>'id_penyidik','type'=>'hidden','validation'=>'required','width'=>'col-sm-9','value'=>CRUDBooster::myId()];
			$this->form[] = ['label'=>'Tgl Surat','name'=>'tgl_surat','type'=>'date','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Jenis Surat','name'=>'jenis_surat','type'=>'select2','validation'=>'required','width'=>'col-sm-9','dataenum'=>'IZIN PENAHANAN;PENAMBAHAN PENAHANAN'];
			$this->form[] = ['label'=>'Nama','name'=>'nama','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Tempat Lahir','name'=>'tempat_lahir','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Tanggal lahir','name'=>'umur','type'=>'date','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Jenis Kelamin','name'=>'jenis_kelamin','type'=>'select','validation'=>'required','width'=>'col-sm-9','dataenum'=>'LAKI-LAKI;PEREMPUAN'];
			$this->form[] = ['label'=>'Kebangsaan','name'=>'kebangsaan','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Tempat Tinggal','name'=>'tempat_tinggal','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Agama','name'=>'agama','type'=>'select','validation'=>'required','width'=>'col-sm-9','dataenum'=>'ISLAM;KRISTEN;KATOLIK;HINDU;BUDHA'];
			$this->form[] = ['label'=>'Pekerjaan','name'=>'pekerjaan','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Surat permohonan penahanan','name'=>'file_1','type'=>'upload','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'dokumen laporan polisi','name'=>'file_2','type'=>'upload','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'surat perintah penyelidikan','name'=>'file_3','type'=>'upload','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'surat perintah penahanan','name'=>'file_4','type'=>'upload','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'surat perintah dimulainya penyidikan','name'=>'file_5','type'=>'upload','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'berita acara','name'=>'file_6','type'=>'upload','validation'=>'required','width'=>'col-sm-9'];
			$this->form[] = ['label'=>'Status','name'=>'status','type'=>'text','validation'=>'required','width'=>'col-sm-9','readonly'=>'1','value'=>'BARU'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'No Surat','name'=>'no_surat','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Pemohon','name'=>'pemohon','type'=>'hidden','validation'=>'required','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Instansi','name'=>'id_penyidik','type'=>'hidden','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Tgl Surat','name'=>'tgl_surat','type'=>'date','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Jenis Surat','name'=>'jenis_surat','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Nama','name'=>'nama','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Tempat Lahir','name'=>'tempat_lahir','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Umur','name'=>'umur','type'=>'date','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Jenis Kelamin','name'=>'jenis_kelamin','type'=>'select','validation'=>'required','width'=>'col-sm-9','dataenum'=>'LAKI-LAKI;PEREMPUAN'];
			//$this->form[] = ['label'=>'Kebangsaan','name'=>'kebangsaan','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Tempat Tinggal','name'=>'tempat_tinggal','type'=>'text','validation'=>'required','width'=>'col-sm-9','readonly'=>'1'];
			//$this->form[] = ['label'=>'Agama','name'=>'agama','type'=>'select','validation'=>'required','width'=>'col-sm-9','dataenum'=>'ISLAM;KRISTEN;KATOLIK;HINDU;BUDHA'];
			//$this->form[] = ['label'=>'Pekerjaan','name'=>'pekerjaan','type'=>'text','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Surat permohonan geledah','name'=>'file_1','type'=>'upload','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'dokumen laporan polisi','name'=>'file_2','type'=>'upload','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'surat perintah penyelidikan','name'=>'file_3','type'=>'upload','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'surat perintah geledah','name'=>'file_4','type'=>'upload','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'surat perintah dimulainya penyidikan','name'=>'file_5','type'=>'upload','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'berita acara','name'=>'file_6','type'=>'upload','validation'=>'required','width'=>'col-sm-9'];
			//$this->form[] = ['label'=>'Status','name'=>'status','type'=>'text','validation'=>'required','width'=>'col-sm-9','readonly'=>'1','value'=>'BARU'];
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
			$config{'content'} = "ada permohonan penahanan masuk ";
			$config['to'] = CRUDBooster::adminPath('penahanan24');
			$config ['id_cms_users'] = [1,2];
			CRUDBooster::sendNotification($config);

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



	    //By the way, you can still create your own method in here... :) 


	}