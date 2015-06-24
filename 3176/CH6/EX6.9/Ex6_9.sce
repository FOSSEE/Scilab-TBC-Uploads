//Ex6_9 : 
//Tonal Transformations.

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
Color=imread("Ex6_9_1.tif");
Color=imresize(Color,0.5);
[nr nc]=size(Color);
figure,ShowColorImage(Color,'Gray Image');
title('Original Image');
D=0:256;
D0=155;// Cut-off Number
n=2;  // Order of Butter Wirth Approximation
H1 = 1-ones(1,1)./(1+(D./D0).^(2*n));  // Transfer Function (Design from the Butterworth Approximation)
figure,plot(H1);
title('RGB Intensity Transformation Function');
Slice_Image=[];
for i=1:nr 
    for j=1:nc                   
           Slice_Image(i,j,1)=H1(uint16(Color(i,j,1))+1);
           Slice_Image(i,j,2)=H1(uint16(Color(i,j,2))+1);
           Slice_Image(i,j,3)=H1(uint16(Color(i,j,3))+1);            
     end     
end
ShowColorImage(Slice_Image,'RGB Image');
title('Tonal Corrected image');

////////////////// Tonal Correction for the Light Image  ////////////////////////
Color=imread("Ex6_9_2.tif");
Color=imresize(Color,0.5);
[nr nc]=size(Color);
figure,ShowColorImage(Color,'Gray Image');
title('Original Image');
D=0:1/256:1;
H2=1*D^3.0;  // Transfer Function (Design from the Gamma Funcetion).
figure,plot(H2);
title('RGB Intensity Transformation Function');
Slice_Image=[];
for i=1:nr   
    for j=1:nc                   
           Slice_Image(i,j,1)=H2(uint16(Color(i,j,1))+1);
           Slice_Image(i,j,2)=H2(uint16(Color(i,j,2))+1);
           Slice_Image(i,j,3)=H2(uint16(Color(i,j,3))+1);            
     end     
end
ShowColorImage(Slice_Image,'RGB Image');
title('Tonal Corrected image');

////////////////// Tonal Correction for the Dark Image  ////////////////////////
Color=imread("Ex6_9_3.tif");
Color=imresize(Color,0.5);
[nr nc]=size(Color);
figure,ShowColorImage(Color,'Gray Image');
title('Original Image');
D=0:1/256:1;
H3=1*D^0.35;
figure,plot(H3);
title('RGB Intensity Transformation Function');
Slice_Image=[];
for i=1:nr   
    for j=1:nc                   
           Slice_Image(i,j,1)=H3(uint16(Color(i,j,1))+1);
           Slice_Image(i,j,2)=H3(uint16(Color(i,j,2))+1);
           Slice_Image(i,j,3)=H3(uint16(Color(i,j,3))+1);            
     end     
end
ShowColorImage(Slice_Image,'RGB Image');
title('Tonal Corrected image');


