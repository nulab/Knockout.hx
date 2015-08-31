package knockout;

import haxe.extern.EitherType;
@:native("ko.expressionRewriting")
extern class ExpressionRewriting {

    public var bindingRewriteValidators:Dynamic;
    
    public var _twoWayBindings:Dynamic;

    public function parseObjectLiteral(objectLiteralString:String):Array<Dynamic>;

    public function preProcessBindings(bindingsStringOrKeyValueArray:EitherType<String,Array<Dynamic>>, bindingOptions:Dynamic):String;

}