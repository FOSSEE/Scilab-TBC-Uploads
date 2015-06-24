//Ex4_4
// The Mechanics of Computing the DFT
//Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods

clc;
close;
clear;
xdel(winsid())//to close all currently open figure(s).
a=[1 2 4 4];
//b=fft2(a);
disp('Original Signal:')
disp(a);
M=length(a);
for i=1:M
    b(i)=0;
    for j=1:M
    b(i)=b(i)+(a(j)*exp((-%i*2*%pi*(i-1)*(j-1)/M)));  
    end    
end
disp('DFT of Signal:')
disp(b);

for i=1:M
    d(i)=0;
    for j=1:M
    d(i)=d(i)+((b(j)*exp((%i*2*%pi*(i-1)*(j-1)/M)))/M);  
    end    
end
disp('IDFT:')
disp(abs(d));

