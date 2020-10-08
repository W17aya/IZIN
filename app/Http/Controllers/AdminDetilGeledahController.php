<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminDetilGeledahController extends \crocodicstudio\crudbooster\controllers\CBController {

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
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = true;
			$this->table = "detil_geledah";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Jenis","name"=>"jenis_surat"];
			$this->col[] = ["label"=>"Pemohon","name"=>"pemohon"];
			$this->col[] = ["label"=>"Tgl Surat","name"=>"tgl_surat"];
			// $this->col[] = ["label"=>"Nomor Surat Permohonan","name"=>"nomor_surat_permohonan"];
			// $this->col[] = ["label"=>"Tgl Eksekusi","name"=>"tgl_eksekusi"];
			$this->col[] = ["label"=>"Nomor Surat Perintah","name"=>"nomor_surat_perintah"];
			$this->col[] = ["label"=>"Keterangan","name"=>"keterangan"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'ID','name'=>'id','type'=>'datamodal','validation'=>'required|required','width'=>'col-sm-10','datamodal_table'=>'geledah','datamodal_columns'=>'id,no_surat,tgl_surat,pemohon,jenis_surat,nama','datamodal_columns_alias'=>'No surat,Tanggal surat, Asal surat,Jenis surat','datamodal_select_to'=>'ID:id,nama:Nama,pemohon:pemohon,jenis_surat:jenis_surat,jenis_kelamin:jenis_kelamin,kebangsaan:kebangsaan,tempat_tinggal:Tempat_tinggal,tgl_surat:tgl_surat,no_surat:no_surat_permohonan,agama:agama,tgl_lahir:tgl_lahir,pekerjaan:pekerjaan,tempat_lahir:tempat_lahir'];
			$this->form[] = ['label'=>'No Surat','name'=>'no_surat_permohonan','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Pemohon','name'=>'pemohon','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Jenis Permohonan','name'=>'jenis_surat','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Tgl Surat','name'=>'tgl_surat','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Nomor Surat Perintah','name'=>'nomor_surat_perintah','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Keterangan','name'=>'keterangan','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Jenis Pihak','name'=>'Jenis_Pihak','type'=>'select2','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'TERSANGKA;SAKSI'];
			$this->form[] = ['label'=>'Nama','name'=>'Nama','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Tempat Lahir','name'=>'Tempat_Lahir','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Tgl Lahir','name'=>'tgl_lahir','type'=>'text','validation'=>'required|date','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Kebangsaan','name'=>'kebangsaan','type'=>'text','validation'=>'required|','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Jenis kelamin','name'=>'jenis_kelamin','type'=>'text','validation'=>'required|','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Tempat Tinggal','name'=>'Tempat_tinggal','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			$this->form[] = ['label'=>'Agama','name'=>'agama','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10','dataenum'=>'ISLAM;KRISTEN;KATOLIK;HINDU;BUDHA;KONGHUCU'];
			$this->form[] = ['label'=>'Pekerjaan','name'=>'pekerjaan','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'No surat permohonan','name'=>'id','type'=>'datamodal','validation'=>'required|required','width'=>'col-sm-10','datamodal_table'=>'geledah','datamodal_columns'=>'no_surat,tgl_surat,pemohon,jenis_surat,','datamodal_columns_alias'=>'No surat,Tanggal surat, Asal surat,Jenis surat','datamodal_select_to'=>'pemohon:pemohon,jenis_surat:jenis_surat,tgl_surat:tgl_surat,no_surat:id_surat,nama:nama,tempat_lahir:tempat_lahir,jenis_kelamin:jenis_kelamin'];
			//$this->form[] = ['label'=>'Pemohon','name'=>'pemohon','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Jenis Permohonan','name'=>'jenis_surat','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Tgl Surat','name'=>'tgl_surat','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			//// $this->form[] = ['label'=>'Nomor Surat Permohonan','name'=>'nomor_surat_permohonan','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//// $this->form[] = ['label'=>'Tgl Eksekusi','name'=>'tgl_eksekusi','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Nomor Surat Perintah','name'=>'nomor_surat_perintah','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Keterangan','name'=>'keterangan','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//// $this->form[] = ['label'=>'Dokumen Permohonan','name'=>'Dokumen_Permohonan','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//// $this->form[] = ['label'=>'Dokumen Penetapan','name'=>'Dokumen_Penetapan','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Jenis Pihak','name'=>'Jenis_Pihak','type'=>'select2','validation'=>'required|min:1|max:255','width'=>'col-sm-10','datatable'=>'pihak,nama'];
			//$this->form[] = ['label'=>'Jenis Pihak','name'=>'Jenis_Pihak','type'=>'select2','validation'=>'required|min:1|max:255','width'=>'col-sm-10','datatable'=>'pihak,nama'];
			//$this->form[] = ['label'=>'Nama','name'=>'Nama','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Tempat Lahir','name'=>'Tempat_Lahir','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Tgl Lahir','name'=>'tgl_lahir','type'=>'date','validation'=>'required|date','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Tempat Tinggal','name'=>'Tempat_tinggal','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Agama','name'=>'agama','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
			//$this->form[] = ['label'=>'Pekerjaan','name'=>'pekerjaan','type'=>'text','validation'=>'required|min:1|max:255','width'=>'col-sm-10'];
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