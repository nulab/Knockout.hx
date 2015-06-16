package knockout;

@:native("ko.components")
extern class Components {

    public function get(componentName:String, callback:ComponentConfig -> Void):Void;

    public function clearCachedDefinition(componentName:String):Void;
    
    public function register(componentName:String, config:ComponentConfig):Void;
    
    public function isRegistered(componentName:String):Void;
    
    public function unregister(componentName:String):Void;
    
    public var defaultLoader:ComponentLoader;
    
    public var loaders:Array<ComponentLoader>;

}