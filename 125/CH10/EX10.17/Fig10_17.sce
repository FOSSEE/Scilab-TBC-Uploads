//Caption: Scilab Code for dilation and erosion process
//Fig.10.17
//Page553
close;
clear;
clc;
a = imread('E:\DIP_JAYARAMAN\Chapter10\morph1.bmp');  //SIVP toolbox
//b =[1,1,1;1,1,1;1,1,1];
StructureElement = CreateStructureElement('square', 3) ;
a1 = DilateImage(a,StructureElement);
a2 = ErodeImage(a,StructureElement);
//Displaying original Image
//imshow(a)
figure(1)
ShowImage(a,'Original Image');
//Displaying Dilated Image
//imshow(a1)
figure(2)
ShowImage(a1,'Dilated Image');
xtitle('Dilated Image')
//Displaying Eroded Image
//imshow(a2)
figure(3)
ShowImage(a2,'Eroded Image');
xtitle('Eroded Image')