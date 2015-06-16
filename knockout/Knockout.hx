package knockout;

import knockout.Utils.Either;
import knockout.Utils.Either;
import knockout.DependentObservable;
import knockout.Observable;
import knockout.ObservableArray;
import knockout.TemplateEngine;


@:native("ko")
extern class Knockout {

    public static var version:String;
    
    public static var extenders:Dynamic;

    public static var computedContext:ComputedContext;

    public static var selectExtensions:SelectExtensions;
    
    public static var expressionRewriting:ExpressionRewriting;
    
    public static var jsonExpressionRewriting:JsonExpressionRewriting;

    public static var virtualElements:VirtualElements;
    
    public static var bindingProvider:Dynamic;

    public static var bindingHandlers:BindingHandlerMap;

    public static var nativeTemplateEngine:TemplateEngine;
    
    public static var jqueryTmplTemplateEngine:TemplateEngine;
    
    public static var components:Components;

    public static function applyBindings(viewModelOrBindingContext:Dynamic,?rootNode:js.html.Node):Void;
    
    public static function applyBindingsToDescendants(viewModelOrBindingContext:Dynamic,?rootNode:js.html.Node):Void;
    
    public static function applyBindingAccessorsToNode(node:js.html.Node, bindings:Dynamic, viewModelOrBindingContext: Dynamic):Void;
    
    public static function applyBindingsToNode(node:js.html.Node, bindings:Dynamic, viewModelOrBindingContext: Dynamic):Void;
    
    public static function contextFor(node:js.html.Node):BindingContext;
    
    public static function dataFor(node:js.html.Node):Dynamic;
    
    public static function observable<T>(?value:T):ObservableExtern<T>;

    public static function observableArray<T>(?value:Either<Array<T>, T>):ObservableArrayExtern<T>;

    public static function computed<T>(evaluatorFunctionOrOptions:Either<Void -> T, DependentObservableOption<T>>, ?evaluatorFunctionTarget:Dynamic, ?options:Dynamic):DependentObservableExtern<T>;
    
    public static function pureComputed<T>(evaluatorFunctionOrOptions:Either<Void -> T, DependentObservableOption<T>>, ?evaluatorFunctionTarget:Dynamic):DependentObservableExtern<T>;

    public static function unwrap<T>(value:Either<T, Subscribable<T>>):T;
    
    public static function isSubscribable(instance:Dynamic):Bool;
    
    public static function isObservable(instance:Dynamic):Bool;
    
    public static function isWriteableObservable(instance:Dynamic):Bool;

    public static function isComputed(instance:Dynamic):Bool;

    public static function renderTemplate(template:Dynamic, dataOrBindingContext:Dynamic, options:Dynamic, targetNodeOrNodeArray:Dynamic, ?renderMode:String):Dynamic;
    
    public static function setTemplateEngine(templateEngine:TemplateEngine):Void;
}


abstract BindingHandlerMap({}){
    @:extern @:arrayAccess public inline function arrayAccess(key:String):BindingHandler untyped {
        return this[key];
    }

    @:extern @:arrayAccess public inline function arrayWrite(key:String, value:BindingHandler):Void untyped {
        this[key] = value;
    }
}


typedef BindingHandler = {
    function init(element:js.html.Node, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void;

    function update(element:js.html.Node, valueAccessor:Void -> Dynamic, allBindingsAccessor:Void -> Dynamic, viewModel:Dynamic, bindingContext:BindingContext):Void;
}
