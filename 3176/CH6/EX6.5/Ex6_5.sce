//Ex6_5 : 
//Use of Psedocolor for highlighting Exposives Contained in Luggage.

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

theta=0:450
RED=abs(255*sind(theta));
GREEN=abs(255*sind(theta-40));
BLUE=abs(255*sind(theta-80));
figure;
subplot(311),plot(theta,RED);
title('RED Intensity Transformation');
subplot(312),plot(theta,GREEN);
title('GREEN Intensity Transformation');
subplot(313),plot(theta,BLUE);
title('BLUE Intensity Transformation');

gray=rgb2gray(imread("Ex6_5.png"));
//gray=imresize(gray,0.25);
[nr nc]=size(gray);

figure,ShowImage(gray,'Gray Image');
title('Original Image');
//min_image=min(gray); // Find Minimum Intensity value
//max_image=max(gray); // Find Maximum Intensity value
//
//color_RED=[0 255 0 0 0 255 255 255];  // RED Component Value of the Pseudo Color
//color_GREEN=[0 0 0 255 255 255 0 255]; // GREEN Component Value of the Pseudo Color
//color_BLUE=[0 255 255 255 0 0 0 255];  // BLUE Component Value of the Pseudo Color
//k=8;
Slice_Image=[];
//for y=1:k // Decide Total No. of Level
for i=1:nr
    for j=1:nc                 
            Slice_Image(i,j,1)=RED(gray(i,j));
            Slice_Image(i,j,2)=GREEN(gray(i,j));
            Slice_Image(i,j,3)=BLUE(gray(i,j));        
    end
end
//end
imshow(Slice_Image);//,'Intensity Slicing');
//title('Image After Intensity Slicing');
