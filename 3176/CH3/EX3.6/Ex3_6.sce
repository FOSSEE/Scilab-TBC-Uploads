//Ex3_6
// Histogram Equalization
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
a=imread('Ex3_6.tif');
[P Q]=size(a);
[count cell]=imhist(a);
figure,ShowImage(a,'Original Image');
title('Original Image','color','blue','fontsize',4);

r=cell';  // Transpose of matrix
nk=round(count)';   // Transpose of matrix

//r=[0 1 2 3 4 5 6 7];  // Intensity
//nk=[790 1023 850 656 329 245 122 81];  //Total No. of Pixels having Same Intensity
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
disp(s);
[nr nc]=size(s);
temp=s';    // Transpose of matrix
for i=1:P     // Intensity Replacement in Original Image
    for j=1:Q        
        b(i,j)=temp(double(a(i,j))+1);
    end
end
figure,ShowImage(b,'histogram Equlized Image');
title('histogram Equlized Image','color','blue','fontsize',4);

for i=0:max(r)
    [row col]=find(s==i);
    len=length(row);
    if(len>0)
        sum_1=0;
        for j=1:len
            sum_1=sum_1+probeblity_r(row(j)); //Addition of Probability of same intensity after Equqlization
        end
        Hist_equ(i+1)=sum_1;
    else
        Hist_equ(i+1)=0;
    end       
end
disp('Histogram Equlization:')
disp(Hist_equ);

figure,bar(r,Hist_equ,0.1);
title('Equalized Histogram','color','blue','fontsize',4);
xlabel('Intensity');
ylabel('Probability of Same Intensity');
