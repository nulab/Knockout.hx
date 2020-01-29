package knockout;

extern class BindingContext {

    public var parent(get, null):Null<Dynamic>;
    public var parents(get, null):Null<Array<Dynamic>>;
    public var root(get, null):Dynamic;
    public var data(get, null):Null<Dynamic>;
    public var index(get, null):Null<Int>;
    public var parentContext(get, null):Null<BindingContext>;
    public var context(get, null):BindingContext;
    public var element(get, null):js.html.Node;

    private inline function get_parent():Null<Dynamic> untyped {
        return this["$parent"];
    }

    private inline function get_parents():Null<Dynamic> untyped {
        return this["$parents"];
    }

    private inline function get_root():Null<Dynamic> untyped {
        return this["$root"];
    }

    private inline function get_data():Null<Dynamic> untyped {
        return this["$data"];
    }

    private inline function get_index():Null<Dynamic> untyped {
        return this["$index"];
    }

    private inline function get_parentContext():Null<Dynamic> untyped {
        return this["$parentContext"];
    }

    private inline function get_context():Null<Dynamic> untyped {
        return this["$context"];
    }

    private inline function get_element():Null<Dynamic> untyped {
        return this["$element"];
    }
}