---
draft: false
title: Style Transfer
weight: 4
---

### Overview

The goals of this element of the project are two fold:

1. To explore the use of [Neural Style Transfer](https://arxiv.org/abs/1508.06576) to apply arbitrary styles to rendering of proteins. 
2. To use style transfer to make a visual representation of the intellectual history of proteins and the way we think, visualise and study them. 

The final output of this element will be an animation of the protein rendered in the style of various art works linked, either directly or by temporal association, with milestones the science of proteins. 

### Style transfer principles

Our exploration of this technique follows four guiding principles: 

1. The image should be recognizably a protein
2. The final image should have depth
3. The final image should have elements of both the large and small scale stylistic structure of the style image. 
4. The protein should stand out against the background. 


### Style transfer

We will more fully explain the details of style transfer in various blog posts but to give you  a flavour the process is as follows. 

1. First we need a *Convolutional Neural Network* (CNN).  This is a type of deep learning algorithm that takes in an image and outputs what it thinks the image is. The images are just arrays of numbers  called *pixels*. A small (600px x 400px) image has 600 x 400 x 3 = 360'000 numbers (3 because you need pixels for red green and blue colours). The CNN sends the array through a series of transformations called *layers* which reduces these numbers to a smaller number, say 1000. These 1000 numbers represent the probability of that image being in one of 1000 classes of object, e.g. a cat, dog, truck,..., tree. Each layer can be thought of just a mathematical operation, albeit a complicated one.  

2. We need to have an mathematical operation which represents the *style* and the *content* of an image.  These operations take the output of a layer and turn it into a single number representing the style of the image and the content of the image. We use a *Gram transformation* for the style (it's not really important to understand this, only that it exists). The operation representing the content is just the sum of the numbers in the layer.  So if we put an image through the CNN, rather than classifying it as a particular thing, we can get two numbers representing the style and the content of an image. 

3. Developing the idea we can take a style image and compute the number representing its style, call it \\( S \\). We can also take a different, content, image and compute the number representing its content, call it \\( C \\). We can also do this for a blank image, call them \\( Sb \\) and \\( Cb \\).  The difference between these numbers is the loss: \\(Loss = (S + C) - (Sb + Cb) \\) and represents the difference in *style* between the blank image and the style of the style image and the difference in *content* between the blank image and the content image. 

4. Now we can adjust the blank image in such a way as to minimize the loss i.e. minimize the difference between the style of the style image and the content of the content image.  

For more information on this process see our blog posts: 

...*coming soon*...