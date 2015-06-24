//Ex3_5
// A Simple Illustration of Histogram Equalization
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
r=[0 1 2 3 4 5 6 7];  // Intensity
nk=[790 1023 850 656 329 245 122 81];  //Total No. of Pixels having Same Intensity
M=sum(nk);
probability_r=nk/M;  // Probability calculation
for i=1:length(r)
    sum_1=0;
    for j=1:i
        sum_1=sum_1+probability_r(j);
    end
    s(i)=max(r)*sum_1;
end
s=round(s); // Rounding Approach
disp(s);
[nr nc]=size(s);


for i=0:max(r)
    [row col]=find(s==i);
    len=length(row);
    if(len>0)
        sum_1=0;
        for j=1:len
            sum_1=sum_1+probability_r(row(j)); //Addition of Probability of same intensity after Equalization
        end
        Hist_equ(i+1)=sum_1;
    else
        Hist_equ(i+1)=0;
    end       
end
disp('Histogram Equalization:')
disp(Hist_equ);

figure,bar(r,probability_r,0.1);
title('Original Histogram','color','blue','fontsize',4);
xlabel('Intensity');
ylabel('Probability of Same Intensity');

figure,bar(r,Hist_equ,0.1);
title('Equalized Histogram','color','blue','fontsize',4);
xlabel('Intensity');
ylabel('Probability of Same Intensity');
