Modern Objective-C generally uses Automatic Reference Counting (ARC).  If you must manage memory manually (in older projects):

```objectivec
@interface MyClass : NSObject {
    NSString *myString;
}

@property (nonatomic, retain) NSString *myString;

-(void) setMyString:(NSString *)newString {
    if (myString != newString) {
        [myString release];
        myString = [newString retain];
    }
}

-(void)dealloc {
    if (myString) { //Check for nil before release
        [myString release];
    }
    [super dealloc];
}
@end
```

**ARC Solution (Recommended):**

ARC simplifies memory management. The property declaration becomes:

```objectivec
@property (nonatomic, strong) NSString *myString;
```

No manual `retain`, `release`, or `dealloc` are needed. The compiler handles memory management automatically.