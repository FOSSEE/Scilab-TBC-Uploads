//Caption: False contouring Scilab code
//Fig1.13
//page 13
clc;
close;
a =ReadImage('E:\DIP_JAYARAMAN\Chapter1\tigerpub.jpg');
a = uint8(a);
figure
imshow(a)
title('Original image');
//using 128 gray levels
figure
a_128 = grayslice(a,128);
gray_128 = gray(128);
ShowImage(a_128,'Image with 128 gray levels',gray_128); 
//using 64 gray levels
figure
a_64 = grayslice(a,64);
gray_64 = gray(64);
ShowImage(a_64,'Image with 64 gray levels',gray_64); 
//using 32 gray levels
figure
a_32 = grayslice(a,32);
gray_32 = gray(32);
ShowImage(a_32,'Image with 32 gray levels',gray_32);
//using 16 gray levels
figure
a_16 = grayslice(a,16);
gray_16 = gray(16);
ShowImage(a_16,'Image with 16 gray levels',gray_16);
//using 8 gray levels
a_8 = grayslice(a,8);
gray_8 = gray(8);
ShowImage(a_8,'Image with 8 gray levels',gray_8); 