Title: keygen
Date: 2017-06-24
Category: Projects
Tags: software, security

keygen is the successor to [the work I did in 2013 on 3D printing keys]({filename}3d-printing-primus.md).
The code is a complete rewrite, and now supports many different types of keys.
There is also a fairly easy-to-follow process for modelling keys that do not yet exist in the keygen database.
The tool itself is still in OpenSCAD (with a python wrapper), but you can find a web interface at [keygen.co](https://keygen.co).

![The keygen logo]({static}/media/keygen/thumbnails/_x320/logo.png)

---BREAK---
The key modelling process leverages inkscape for vector graphics creation.
Typically, an OpenSCAD model takes in two polygons: the stamped shape of the key blank,
and the shape of the shape of the key tip (warding.)
You may also provide an additional vector layer for engravings that are stamped on the key, but this is just for aesthetics.
All of these are fairly easy to generate from documentation or pictures of keys,
and there is a detailed guide [here](https://github.com/ervanalb/keygen/blob/master/doc/how_to_model_keys.md) on how to do it.
With well-done vector outlines, keygen can create highly-realistic models, including the bow and milling artifacts.

[![]({static}/media/keygen/thumbnails/_x320/inkscape.png)]({static}/media/keygen/inkscape.png "Tracing key pictures in inkscape")
[![]({static}/media/keygen/thumbnails/_x320/model.png)]({static}/media/keygen/model.png "An OpenSCAD model of a key generated from those pictures")
