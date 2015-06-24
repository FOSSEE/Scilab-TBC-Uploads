//Caption: Scilab Code to perform an opening and closing operation on the image
//Fig.10.19
//Page555
close;
clear;
clc;
a = imread('E:\DIP_JAYARAMAN\Chapter10\morph2.bmp');  //SIVP toolbox
//b =[1,1,1;1,1,1;1,1,1];
StructureElement = CreateStructureElement('square', 3) ;
//Opening is done by first applying erosion and then dilation operations on image
b1 = ErodeImage(a,StructureElement);
b2 = DilateImage(b1,StructureElement);
//Closing is done by first applying dilation and then erosion operation on image
a1 = DilateImage(a,StructureElement);
a2 = ErodeImage(a1,StructureElement);
//Displaying original Image
figure(1)
ShowImage(a,'Original Image');
//Displaying Opened Image
figure(2)
ShowImage(b2, 'Opened Image');
xtitle('Opened Image')
//Displaying Closed Image
figure(3)
ShowImage(a2, 'Closed Image');
xtitle('Closed Image')