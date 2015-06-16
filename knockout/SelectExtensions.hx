package knockout;

import js.html.Element;
@:native("ko.selectExtensions")
extern class SelectExtensions {

    public function readValue(element:Element):Bool;

    public function writeValue(element:Element, value:String):Bool;

}