# knockout.hx

knockout.hx is an extern file for Knockout.

## Install

```
haxelib install knockout.hx
```

## How to use

```javascript
// Create an observable
var observable:Observable<String> = Knockout.observable("hello");

// Writing
observable.set("good by");
// other way
observable << "good by";

// Reading
var value = observable.get();
// Implicit Casts
var value:String = observable;

//Activating
Knockout.applyBindings({prop:observable});

```

See example: text/Test.hx