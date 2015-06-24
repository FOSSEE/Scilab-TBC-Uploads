//Ex2_4
//Comparision of Interpolation Approaches for Image Shrinking and Zooming
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;
close;
clear;
xdel(winsid())//to close all currently open figure(s).
gray=imread("Ex2_4.tif");
figure,ShowImage(gray,'Gray Image');
title('Original Image (1250 DPI)');
[M,N]=size(gray);

a2=imresize(gray,[213 162],'nearest');  //nearest neigubour Interpolation
figure,ShowImage(a2,'Resize Image');
title('Resize Image (72 DPI) nearest neigubour Interpolation');
a2=imresize(gray,[213 162],'bilinear');   ///bilinear Interpolation
figure,ShowImage(a2,'Resize Image');
title('Resize Image (72 DPI) with bilinear Interpolation');
a2=imresize(gray,[213 162],'bicubic');   //bicubic Interpolation
figure,ShowImage(a2,'Resize Image');
title('Resize Image (72 DPI) with bicubic Interpolation');

a3=imresize(gray,[886 675],'nearest');   //nearest neigubour Interpolation
figure,ShowImage(a3,'Resize Image');
title('Resize Image (150 DPI) with nearest neigubour Interpolation');
a3=imresize(gray,[886 675],'nearest');   ///bilinear Interpolation
figure,ShowImage(a3,'Resize Image');
title('Resize Image (150 DPI) with bilinear Interpolation');
a3=imresize(gray,[886 675],'nearest');    //bicubic Interpolation
figure,ShowImage(a3,'Resize Image');
title('Resize Image (150 DPI) with bicubic Interpolation');


