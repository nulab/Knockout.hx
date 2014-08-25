package knockout;

interface ComponentLoader {

    public function getConfig(name:String, callback:ComponentConfig -> Void):Void;

    public function loadComponent(name:String, componentConfig:ComponentConfig, callback:Dynamic -> Void):Void;

    public function loadTemplate(name:String, templateConfig:Dynamic, callback:Array<js.html.Node> -> Void):Void;

    public function loadViewModel(name:String, viewModelConfig:Dynamic, callback:Dynamic -> Void):Void;

}