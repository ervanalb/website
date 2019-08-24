Title: Mesh stringer
Date: 2018-09-23
Category: Projects
Tags: software

mesh-stringer is a tool for helping build physical models of STL files.
It turns an STL file into a list of tube lengths and a stringing order.
You can then build the model by cutting the requested lenghts of tube,
and running a single string through them in the requested order.
You can download the software on [Github](https://github.com/ervanalb/mesh-stringer).

[![]({static}/media/mesh-stringer/thumbnails/_x320/cube.jpg)]({static}/media/mesh-stringer/cube.jpg "A model of a cube, and a cube made with straws and string")

---BREAK---
This was a weekend project done in collaboration with [zbanks](https://github.com/zbanks/pipedream).
I proposed the problem of whether a mesh could always be strung with a single loop of thread.
After an hour or so of discussion, he came up with the algorithm implemented here:

1. Naively thread each triangle separately. If you tried to build this, it would stay together but you would need 1 string per triangle.
2. Create a graph of mesh faces and how they are connected. Two faces are connected if they share an edge.
3. Calculate a spanning tree of this graph.
4. Every time the spanning tree crosses an edge, introduce a twist/swap the two strings in that edge, combining them into a single string.

The result of this algorithm is a single loop which threads every edge twice, and holds neighboring edges together as they meet at a vertex.
Non-manifold meshes may not contain two threads per edge, but the algorithm will still work.
Not only is there always a stringing order, but there are many different stringing orders possible, depending on how the spanning tree is built.
The algorithm is also not specific to triangular meshes; it will work for arbitrary polygonal meshes (though practically, these don't hold their shape when built.)

Larissa, zbanks and I have built several of these physical models.
We have found that even triangular meshes frequently don't hold their shape when built. It is easy for certain kinds of 3D geometry to "cave in,"
creating a concave area where the original model had a convex one.

We also learned that maintaining tension while building is close to impossible.
For the final shape to be rigid, it is necessary to walk through the stringing order again after the entire thing is built, pulling out tension at each vertex.
This is a fairly easy process and significantly improves the result.

We attempted to build a 7-foot vase / igloo out of 1/2" PVC pipe and paracord. It took about 300 feet of string and was reasonably easy to build over the course of a day with 3-4 people. With the small models, certain actions were trivial to do, such as pulling through slack or lifting up the entire model to reorient certain parts of it. With the large tubes, these actions took coordination between multiple people.

Although the process was successful, the finished model was very droopy, and largely unable support its own weight. A better model would probably have triangles that are close to equilateral, so they don't collapse to lines or create concave geometry.
