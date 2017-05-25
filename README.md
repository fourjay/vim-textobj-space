vim-textobj-space
=================
This is a fork of textobj-space

Original version was written as a direct plugin rather then an autoload.
This creates a fairly significant load time at startup.

Text objects for continuity space

Requirements
------------

[vim-textobj-user][1]

usage
-----

Keymap|target
----|---
iS|continuation space characters
aS|continuation space and multibyte space characters

e.g.
----

```java
   /**
    * description of method
    *
    * @param    int     hoge    description of hoge
    * @param    int  fuga    description of fuga
                   ^
    */
```

Cursor in the place of ^.

```
ciS<tab>
```

```java
   /**
    * description of method
    *
    * @param    int     hoge    description of hoge
    * @param    int     fuga    description of fuga
    */
```

[1]: https://github.com/kana/vim-textobj-user
