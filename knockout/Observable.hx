package knockout;
import knockout.Observable;
import knockout.Subscribable;

abstract Observable<T>(ObservableExtern<T>) from ObservableExtern<T>{

    inline public static var fn:Dynamic = ObservableFn;

    @:extern inline function new(observable:ObservableExtern<T>) {
        this = observable;
    }

    @:extern @:to inline public function toValue():T {
        return this.getter()();
    }

    @:extern @:op(A << B) static inline public function setValue<T>(lhs:Observable<T>, rhs:T):Void {
        lhs.set(rhs);
    }

    @:extern inline public function set(newValue:T):Observable<T> {
        return this.setter()(newValue);
    }

    @:extern inline public function get():T {
        return this.getter()();
    }

    @:extern inline public function peek():T {
        return this.peek();
    }

    @:extern inline public function valueHasMutated():Void {
        this.valueHasMutated();
    }

    @:extern inline public function valueWillMutate():Void {
        this.valueWillMutate();
    }

    // Subscribable methods

    @:extern inline public function extend(source:Dynamic):Subscribable<T>{
        return this.extend(source);
    }

    @:extern inline public function dispose():Void{
        this.dispose();
    }

    @:extern inline public function getSubscriptionsCount():Int{
        return this.getSubscriptionsCount();
    }

    @:extern inline public function subscribe(call:T -> Void, ?callbackTarget:Dynamic, ?event:String):Subscription{
        return this.subscribe(call, callbackTarget, event);
    }
}


extern class ObservableExtern<T> extends Subscribable<T> {

inline function setter():T -> ObservableExtern<T> untyped {
    return this;
}

inline function getter():Void -> T untyped {
    return this;
}

public function peek():Null<T>;

public function valueHasMutated():Void;

public function valueWillMutate():Void;

}

@:native("ko.observable.fn")
extern class ObservableFn {

}