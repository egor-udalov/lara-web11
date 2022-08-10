<?php 
	
	namespace App\Http\Controllers;
	use App\Http\Controllers\Controller;
	use Illuminate\Http\Request;
	use Illuminate\Support\Facades\Redirect;
	use Illuminate\Support\Facades\Validator;
	use Illuminate\Support\Facades\Auth;


	class AdminController extends Controller{

		private $template = 'default';

		public function indexAction(){

			if (!Auth::check()) {
			    return redirect()->route('login');
			}

			$template = $this->template;


			return view('pages.admin.index', compact('template'));
		}

		public function loginAction(){


			$template = $this->template;


			return view('pages.admin.login', compact('template'));
		}

		public function loginrequestAction(Request $request){

			$validator = Validator::make($request->all(), [
	            'email' => 'required|email:rfc,dns',
	            'password' => 'required|min:3',
	        ]);


			if($validator->fails()) {
				return redirect()->route('login');
			}

			if (Auth::attempt(['email' => $request->email, 'password' => $request->password, 'role_id' => 1])) {
			    return redirect()->route('dashboard');
			}
			else{
				return redirect()->route('login');
			}
		}	

		public function logoutAction(){
			Auth::logout();
			return redirect()->route('login');
		}

	}