# SwiftUI `unable to infer complex talk`
Swift UI Talk for work, writtin in ... SwiftUI

# TODO:

* [ ] Combine .print()

* [ ] Combine .store(in: &Set<AnyCancellable>())

* [ ] AnyView, someView

* [ ] Q: Instance member 'x' cannot be used on type 'y_Preview'
    A: Didn't use `static` in the preview variable.

* [ ] onMove crashes if Section{} inside.
    Can't subclass ListStyle

* [x] Q: 'unable to infer complex type'
    A: Wrap in Group {}

* [ ] Q: 'The compiler is unable to type-check this expression in reasonable time; try breaking up the expression into distinct sub-expressions'
    A: put it in a func

* [ ] Q: 'Function declares an opaque return type, but the return statements in its body do not have matching underlying types'
    A: Wrap in AnyView{}

* [ ] KeyboardResponder

* [ ] ActionSheet class

* [ ] Q: 'Int' is not convertable to 'CGFloat?'
    A: too many items, 10+, put in Groups

* [ ] XCode 11 bug:
    Rename File doesn't work
