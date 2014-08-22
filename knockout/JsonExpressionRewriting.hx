package knockout;

import knockout.Utils.Either;
@:native("ko.jsonExpressionRewriting")
extern
class JsonExpressionRewriting {

    public function insertPropertyAccessorsIntoJson(bindingsStringOrKeyValueArray:Either<String,Array<Dynamic>>, bindingOptions:Dynamic):String;


}