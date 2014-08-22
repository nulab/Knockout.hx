package knockout;

import js.html.Node;
interface TemplateSource {

    public function text(?valueToWrite:Dynamic):Dynamic;

    public function data(key:String, ?valueToWrite:Dynamic):Dynamic;
    
    public function nodes(?valueToWrite:Dynamic):Dynamic;

}

@:native("ko.templateSources.domElement")
extern
class DomElement implements TemplateSource{

    public function new(element:Node);

}

@:native("ko.templateSources.anonymousTemplate")
extern
class AnonymousTemplate extends DomElement{

    public function new(element:Node);

}