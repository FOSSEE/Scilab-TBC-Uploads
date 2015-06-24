//Ex5_5
// Illustration of Adaptive Median Filter
// Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;
clear;
close;
xdel(winsid());
A=imread("Ex5_5.tif");
A=imresize(A,[256 256]);
A=imnoise(A,'salt & pepper',0.25);   // Add Sali & Pepper Noise
figure,ShowImage(A,'Salt & pepper Image');
title('Image with Salt & pepper noise (Density = 0.25)','color','blue','fontsize',4); 
figure,ShowImage(MedianFilter(A,[7 7]),'Median filter with mask 7x7');
title('Restored Image using Median filter with 7*7 Mask','color','blue','fontsize',4);

///////////////// Adaptive Median Filter /////////////////////////
[r c]=size(A);
n=7 // Maximum Window size
a=(n-1)/2;
C=zeros(r-2*a,c-2*a);
for i=a+1:(r-a)
    for j=a+1:(c-a)
        for b=3:2:7
            d=(b-1)/2
        x=A(i,j);
        p=imcrop(A,[i-d j-d b b])  // Crop the Sub Image form Original Iamge
        med=median(p); // To Find Median Value
        maxx=max(p);   // To Find Max Value
        minn=min(p);   // To Find Min Value
        if (med>minn & med<maxx) then
            if(x>minn & x<minn) then
                C(j-a+1,i-a+1)=x;
                clear p;
                break;
            else
                C(j-a+1,i-a+1)=med;
                clear p;
                break;
            end
        elseif b<7 then
            continue;
        else
            C(j-a+1,i-a+1)=med;
            clear p;
            break;
        end
    end
end
end
figure;ShowImage(C,'Adaptive Median filter Image using code');
title('Restored Image using Adaptive Median filter','color','blue','fontsize',4);
