//Ex3_11
// Computing Histogram Statistic
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
a=uint8([0 0 1 1 2;1 2 3 0 1;3 3 2 2 0;2 3 1 0 0;1 1 3 2 2]);
L=max(a);
[P Q]=size(a);

/////////////////////////// Global Histogram Equalization  /////////////////////////
[count cell]=imhist(a);
//figure,bar(cell(1:L+1),count(1:L+1),0.2);
//title('Histogram');
r=cell(1:L+1)';  // Transpose of matrix
nk=round(count(1:L+1))';   // Transpose of matrix
M=sum(nk);
probeblity_r=nk/M;  // Probablity calculation
sum_1=0;
for i=1:length(r)   
        sum_1=sum_1+(r(i)*probeblity_r(i));     
end
Mean=sum_1;
disp('Probablity:');
disp(probeblity_r);
disp('Mean:');
disp(Mean);

Mean1=mean(double(a));
disp('Mean Calculated from (5*5)Image:');
disp(Mean1);
