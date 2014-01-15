ant-docbook-dummy
=================

Commingled DocBook-esque markup in Ant build files

An [Ant](http://ant.apache.org/) library that defines a bunch of no-op
tasks that happen to have the same local names as
[DocBook](http://www.docbook.org/) XML 5.0 elements, e.g.:

```xml
<project default="build" xmlns:d="antlib:com.navelint.ant.docbook">
  <target name="build">
    <d:para>
      This target gives a traditional greeting.
    </d:para>
    <echo>Hello, world!</echo>
  </target>
</project>
```

The new tasks may appear anywhere an ordinary Ant task would appear.

These can later be extracted via XSL to produce attractive
documentation for your Ant build files.  Note that since these are
*not* in the canonical namespace for DocBook XML, they cannot be
validated against any schema or DTD while still part of the Ant build
file.  However once you extract them via XSL, you may be able to
perform such a validation.

Building
--------

If you have an easy way to get the DocBook XML schemas from an
operating system package or package manager, do it.  Then you can

`mvn clean package`

Testing
-------

`mvn integration-test`

Using
-----

Copy the output `docbook-dummy-VERSION.jar` to your `~/.ant/lib`
or `ANT_HOME/lib` directory.

Platform Notes
--------------

Should be able to automatically find `docbook.xsd` when it was
installed on:

* Mac OS X with [brew](https://github.com/Homebrew/homebrew)
* FreeBSD with [pkgng](https://github.com/freebsd/pkg)
* Red Hat-like Linux with yum

Can be easily extended for other platforms or installations via Maven
profiles.
