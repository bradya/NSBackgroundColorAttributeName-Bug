NSBackgroundColorAttributeName-Bug
==================================

1. Open up the project
2. Run the simulator
3. Open TestView.m and navigate to line 37.

When drawing a NSAttributedString with -drawInRect, if you specify a background color, it will not draw properly if its y is greater than 0.

This bug happens on iOS 7 only. It works properly on iOS 6.
