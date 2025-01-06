# Objective-C Memory Management Bug

This repository demonstrates a common error in Objective-C memory management related to custom accessors and the `dealloc` method.  The bug involves incorrect handling of `retain` and `release` calls, potentially leading to crashes or memory leaks.

The `bug.m` file contains the erroneous code, while `bugSolution.m` provides the corrected version using modern memory management techniques (ARC or manual retain/release with improved handling).