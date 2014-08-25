package knockout;

@:native("ko.computedContext")
extern
class ComputedContext {

    public function getDependenciesCount():Int;

    public function isInitial():Bool;

}