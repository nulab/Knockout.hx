package knockout;

import haxe.extern.EitherType;
@:native("ko.jsonExpressionRewriting")
extern class JsonExpressionRewriting {

    public function insertPropertyAccessorsIntoJson(bindingsStringOrKeyValueArray:EitherType<String,Array<Dynamic>>, bindingOptions:Dynamic):String;


}