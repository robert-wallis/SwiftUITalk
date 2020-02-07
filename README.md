# SwiftUI `unable to infer complex talk`
Swift UI Talk for work, writtin in ... SwiftUI

# TODO

* [ ] AnyView, someView

* [ ] Q: 'The compiler is unable to type-check this expression in reasonable time; try breaking up the expression into distinct sub-expressions'
    A: put it in a func

* [ ] ActionSheet class

* [ ] XCode 11 bug:
    Rename File doesn't work
    
* [ ] Only one Alert in the whole view heirarechy, including siblings.

# DONE

* [x] Combine .print()

* [x] Combine .store(in: &Set<AnyCancellable>())

* [x] Q: 'unable to infer complex type'
A: Wrap in Group {}

* [x] Q: 'Int' is not convertable to 'CGFloat?'
A: too many items, 10+, put in Groups

* [x] Q: Instance member 'x' cannot be used on type 'y_Preview'
    A: Didn't use `static` in the preview variable.

* [x] Q: 'Function declares an opaque return type, but the return statements in its body do not have matching underlying types'
    A: Wrap in AnyView{}

* [x] Identifyable ForEach(items, id: \.id)

* [x] onMove crashes if Section{} inside.
    Can't subclass ListStyle

* [x] KeyboardResponder
