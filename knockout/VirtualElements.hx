package knockout;

import js.html.Node;
@:native("ko.virtualElements")
extern class VirtualElements {

    public var allowedBindings:Dynamic<Bool>;

    public function emptyNode(node:Node):Void;

    public function insertAfter(containerNode:Node, nodeToInsert:Node, insertAfterNode:Node):Void;

    public function prepend(containerNode:Node, nodeToPrepend:Node):Void;

    public function setDomNodeChildren(node:Node, childNodes:Array<Node>):Void;

}