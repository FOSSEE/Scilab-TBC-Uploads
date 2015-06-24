//Ex9_4
//Use of opening and closing for Morphological Filtering
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

Color=imread("Ex9_4.png");
Image=imresize(rgb2gray(Color),2,'bicubic');
Image=im2bw(Image,0.75);
[nr nc]=size(Image);
figure,ShowImage(Image,'Gray Image');
title('Noisy Image','color','blue','fontsize',4);

Mask=CreateStructureElement('square',3);  // Create Structuring Element
Image_Eroide=ErodeImage(Image,Mask);  // Erosion Operation
figure,ShowImage(Image_Eroide,'Eriode Image');
title('Eriode Image with 3*3 Square Mask','color','blue','fontsize',4);

Image_Open=OpenImage(Image,Mask);   // Opening Operation
figure,ShowImage(Image_Open,'Open Image');
title('Opening Image with 3*3 Square Mask','color','blue','fontsize',4);

Image_Dilate=DilateImage(Image_Open,Mask);  // Dilusion of Open Image
figure,ShowImage(Image_Dilate,'Dilate Image');
title('Dilate Image with 3*3 Square Mask','color','blue','fontsize',4);

Image_Close=CloseImage(Image_Dilate,Mask);   // Opening Operation
figure,ShowImage(Image_Close,'Closing Image');
title('Closing Image with 3*3 Square Mask','color','blue','fontsize',4);
