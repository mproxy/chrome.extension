package chrome;

private typedef Cookie = {
	var name : String;
	var value : String;
	var domain : String;
	var hostOnly : Bool;
	var path : String;
	var secure : Bool;
	var httpOnly : Bool;
	var session : Bool;
	var expirationDate : Float;
	var storeId : String;
}

private typedef CookieStore = {
	var id : String;
	var tabIds : Array<Int>;
}

@:native("chrome.cookies") extern class Cookies {
	static function get( details : Dynamic, cb : Cookie->Void ) : Void;
	static function getAll( details : Dynamic, cb : Array<Cookie>->Void ) : Void;
	static function getAllCookieStores( cb : Array<Cookie>->Void ) : Void;
	static function remove( details : Dynamic ) : Void;
	static function set( details : Dynamic ) : Void;
	static var onChanged(default,null) : Event<Bool->Cookie->Void>;
}