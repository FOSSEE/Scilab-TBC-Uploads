//Ex2_5
//Addition of Noisy Images for Noise Reduction
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
gray=imread("Ex2_5.tif");
//gray=rgb2gray(a);
gray=im2double(gray);

figure,ShowImage(gray,'Gray Image');
title('Original Image');
[nr nc]=size(gray);
noise_image=gray;

out_image=double(zeros(nr,nc));
level=[5 10 20 50 100];
for i=1:length(level)
No=level(i);
disp(No);
for k=1:No
    noisy_image=imnoise(noise_image,'gaussian',0,0.02);
//    figure,ShowImage(noisy_image,'Image corrupted by salt & pepper noise');//ShowImage() is used to sho     w image, figure is command to view images in separate window.
//    title('Image corrupted by  Gaussian noise');//title() is used for providing  a title to an image.
//    disp(size(noise_image));
    out_image=imadd(out_image,noisy_image);
end
out_image=out_image/No;
out_image=mat2gray(out_image);

figure,ShowImage(out_image,'Image Recoverd from the Noise');//ShowImage() is used to show image, figure is command to view images in separate window.
    title('Image Recoverd from the Noise');//title() is used for providing  a title to an image.
//Recoverd_Image=0.5*out_image.^0.15;//Gamma Transformation
//figure,ShowImage(Recoverd_Image,'Recoverd Image after Gamma Transormation');//ShowImage() is used to show image, figure is command to view images in separate window.
//title('Image Recoverd from the Noise');//title() is used for providing  a title to an image.
end
