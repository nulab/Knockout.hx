package knockout;

import js.html.Node;
typedef TemplateSource = {

    function text(?valueToWrite:Dynamic):Dynamic;

    function data(key:String, ?valueToWrite:Dynamic):Dynamic;
    
    function nodes(?valueToWrite:Dynamic):Dynamic;

}

@:native("ko.templateSources.domElement")
extern
class DomElement{

    public function new(element:Node);

    public function text(?valueToWrite:Dynamic):Dynamic;

    public function data(key:String, ?valueToWrite:Dynamic):Dynamic;

    public function nodes(?valueToWrite:Dynamic):Dynamic;

}

@:native("ko.templateSources.anonymousTemplate")
extern
class AnonymousTemplate extends DomElement{

    public function new(element:Node);

}