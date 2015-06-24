//Ex9_1
//Using Erosion to remove image component
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

////////////////// Tonal Correction for the Flat Image  ////////////////////////
Image=imread("Ex9_1.tif");
//Color=imresize(Color,0.25);
[nr nc]=size(Image);
figure,ShowImage(Image,'Gray Image');
title('Binary Image of Wire Bond [486*486]','color','blue','fontsize',4);
Mask=CreateStructureElement('square',11);
Image_Eroide=ErodeImage(Image,Mask);
figure,ShowImage(Image_Eroide,'Eriode Image');
title('Eriode Image with 11*11 Square Mask','color','blue','fontsize',4);

Mask=CreateStructureElement('square',15);
Image_Eroide=ErodeImage(Image,Mask);
figure,ShowImage(Image_Eroide,'Eriode Image');
title('Eriode Image with 15*15 Square Mask','color','blue','fontsize',4);

Mask=CreateStructureElement('square',45);
Image_Eroide=ErodeImage(Image,Mask);
figure,ShowImage(Image_Eroide,'Eriode Image');
title('Eriode Image with 45*45 Square Mask','color','blue','fontsize',4);
