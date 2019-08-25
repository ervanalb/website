Title: promap
Date: 2019-02-26
Category: Projects
Tags: software

promap is software to create projection maps.
The maps that it produces can be used with video art tools such as [radiance](https://radiance.video) to project onto physical objects.
The algorithm projects structured light using a projector.
It captures the result using a single camera and computes the physical scene as viewed from the projector.
It also attempts to compute a disparity map, which corresponds to depth.
You can [install promap using pip](https://pypi.org/project/promap/) or read more about it on [Github](https://github.com/ervanalb/promap).

---BREAK---
promap was written over the course of a few weekends.
It's a commmand-line tool that uses Python and a little bit of OpenCV to project, capture, and process images.
The algorithm it implements is as follows:

1. Generate gray code images
2. Send the gray code images to the projector
3. Capture the images using the camera
4. Decode the images into a lookup table that goes from camera to projector space
5. Invert the lookup table so it goes from projector to camera space, and compute a disparity map using least-squares fitting
6. Reproject camera's view of the scene (using the inverted lookup table) producing the projector's view of the scene

promap will do all of these for you in one go, or you can do some subset of them and alter / introspect the results at each step.

[![]({static}/media/promap/thumbnails/_x640/flowchart.png)]({static}/media/promap/flowchart.png "A flowchart showing the algorithm described above")

How well promap works depends heavily on the quality of the projector and camera setup.
A bright projector and a high-resolution camera will produce much better results.
The camera should be placed as close to the projector as possible,
though placing it directly in-line with the projector will result in a low-resolution disparity map (the color map will be great, though.)

promap has seen very little use in the wild, so please let me know if you use it and like it.
I've used it once to project onto an oddly shaped screen.
I brought the map into an image editor and drew over the shape of the screen, and saved the result as a black and white image to be used as a mask.
