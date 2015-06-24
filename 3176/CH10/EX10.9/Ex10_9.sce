//Ex10_9
// Another illustration of the three principal Edge Detection Methods
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

a=imread("Ex10_9.tif");
//a=im2double(a);
figure,ShowImage(a,'Gray Image');
title('Original Image','color','blue','fontsize',4);
[M,N]=size(a);
 //////////////////  Threshlded Gradient of Smoothed Image  ////////////////////////////////
a1=imfilter(a,fspecial('average',5));
Mask=[-1 -2 -1;0 0 0;1 2 1];  // Mask for the Sobel
GradientX_Image=imfilter(a1,Mask);  // Filtering the Original Image with the Mask
//figure,ShowImage(GradientX_Image,'Filter Image');
//title('Sobel X-direction Gradient Image','color','blue','fontsize',4);

Mask=[-1 0 1;-2 0 2;-1 0 1];  // Mask for the Sobel
GradientY_Image=imfilter(a1,Mask);  // Filtering the Original Image with the Mask
//figure,ShowImage(GradientY_Image,'Filter Image');
//title('Sobel Y-direction Gradient Image','color','blue','fontsize',4);

Gradient=GradientX_Image+GradientY_Image;
//figure,ShowImage(Gradient,'Filter Image');
//title('Sobel X+Y Gradient Image','color','blue','fontsize',4);

th=84;  // 33% of the Maximum Value in Gradient Image
[row col]=find(Gradient>84);
Gradient_Thresh=zeros(M,N);
for i=1:length(row)
    Gradient_Thresh(row(i),col(i))=255;
end
figure,ShowImage(Gradient_Thresh,'Filter Image');
title('Thresholded gradient Image','color','blue','fontsize',4);

//////////////////// Marr-Hildreth Edge Detection ///////////////////////////////////
a=im2double(a);
sigma=3;
for i=1:19
    for j=1:19
        Mask(i,j)=[(i^2+j^2-(2*sigma^2))/sigma^4]*exp(-(i^2+j^2)/(2*sigma^2));  // Mask Generation
    end
end

Filter_Image=imfilter(a,Mask);  // Filtering the Original Image with the Mask
//figure,ShowImage(Filter_Image,'Filter Image');
//title('Laplacian of gaussian Image','color','blue','fontsize',4);
b=zeros(M,N);
temp=Filter_Image;
th=0.0021;
for i=2:M-1  // Zero Crossing Detection
    for j=2:N-1
        //temp=[Filter_Image(i-1:i+1,j-1:j+1)];
        if((temp(i-1,j-1)>th & temp(i+1,j+1)<th) | (temp(i-1,j-1)<th & temp(i+1,j+1)>th)) then
            b(i,j)=255;
        else if ((temp(i-1,j+1)>th & temp(i+1,j-1)<th) | (temp(i-1,j+1)<th & temp(i+1,j-1)>th)) then
            b(i,j)=255;
        else if ((temp(i,j+1)>th & temp(i,j-1)<th) | (temp(i,j+1)<th & temp(i,j-1)>th)) then
            b(i,j)=255;
        else if ((temp(i-1,j)>th & temp(i+1,j)<th) | (temp(i,j+1)<th & temp(i,j-1)>th)) then
            b(i,j)=255;
        end
        end
        end
        end            
    end
end
figure,ShowImage(b,'Zero Crossing Image');
title('Marr-Hildreth Edge Detected Image','color','blue','fontsize',4);

////////////////////////// Canny Edge Detecedd Image  //////////////////////////////////////
a=imread("Ex10_9.tif");
E=edge(a,'canny',[0.05 0.95]);
figure,ShowImage(E,'Canny Image');
title('Canny Edge Detected Image','color','blue','fontsize',4);
