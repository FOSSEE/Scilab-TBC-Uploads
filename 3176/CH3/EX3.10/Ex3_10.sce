//Ex3_10
// Local Histogram Equalization
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
p1=imread('Ex3_10.tif');
a=imcrop(p1,[175 178 155 160]);
//a=imresize(a,0.5,'bicubic');
[P Q]=size(a);

/////////////////////////// Global Histogram Equalization  /////////////////////////
[count cell]=imhist(a);
figure,ShowImage(a,'Original Image');
title('Original Image','color','blue','fontsize',4);

r=cell';  // Transpose of matrix
nk=round(count)';   // Transpose of matrix
M=sum(nk);
probeblity_r=nk/M;  // Probablity calculation
for i=1:length(r)
    sum_1=0;
    for j=1:i
        sum_1=sum_1+probeblity_r(j);
    end
    s(i)=max(r)*sum_1;
end
s=round(s); // Rounding Approach
//disp(s);
[nr nc]=size(s);
temp=s';    // Transpose of matrix
for i=1:P     // Intensity Replacement in Original Image
    for j=1:Q        
        b(i,j)=temp(double(a(i,j))+1);
    end
end
figure,ShowImage(b,'histogram Equlized Image');
title('Image Enhancement using Global Histogram Equalization','color','blue','fontsize',4);

/////////////////////////// Local Histogram Equalization  /////////////////////////
mask=3;
for i=1+floor(mask/2):P-floor(mask/2)
    for j=1+floor(mask/2):Q-floor(mask/2)
        a1=a(i-floor(mask/2):1:i+floor(mask/2),j-floor(mask/2):1:j+floor(mask/2)) ;
        [count cell]=imhist(a1);
        r=cell';  // Transpose of matrix
        nk=round(count)';   // Transpose of matrix
        M=sum(nk);
        probeblity_r=nk/M;  // Probablity calculation
        for x=1:length(r)
            sum_1=0;
            for y=1:x
                sum_1=sum_1+probeblity_r(y);
            end
        s(x)=max(r)*sum_1;
        end
        s=round(s); // Rounding Approach
        //disp(s);
        [nr nc]=size(s);
        temp=s';    // Transpose of matrix            
        b(i,j)=temp(double(a(i,j))+1); 
    end
    disp(i);
end
figure,ShowImage(b,'histogram Equlized Image');
title('Image Enhancement using Local Histogram Equalization','color','blue','fontsize',4);
