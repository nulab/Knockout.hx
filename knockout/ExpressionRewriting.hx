package knockout;

import knockout.Utils.Either;
@:native("ko.expressionRewriting")
extern
class ExpressionRewriting {

    public var bindingRewriteValidators:Dynamic;
    
    public var _twoWayBindings:Dynamic;

    public function parseObjectLiteral(objectLiteralString:String):Array<Dynamic>;

    public function preProcessBindings(bindingsStringOrKeyValueArray:Either<String,Array<Dynamic>>, bindingOptions:Dynamic):String;

}