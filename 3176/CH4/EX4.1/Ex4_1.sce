//Ex4_1
// Obtaining the Fourier Transform of a Simple Function
//Version : Scilab 5.4.1
// Operating System : Window-xp, Window-7
//Toolbox: Image Processing Design 8.3.1-1
//Toolbox: SIVP 0.5.3.1-2
//Reference book name : Digital Image Processing
//book author: Rafael C. Gonzalez and Richard E. Woods


clc; //to clear command window.
clear; //to kill previously defined variables.
xdel(winsid());//to close all currently open figure(s).

f=-5:0.01:5;
[nr nc]=size(f);
signal=ones(nr,nc);
A=1;
W=length(f);
for i=1:W
    if(f(i)==0)
        mag(i)=A;
    else
        mag(i)=A*W*(sin(%pi*f(i)*W)/((%pi*f(i)*W)+%eps));         
    end    
    
end

figure,mtlb_axis([-6 6 0 2]);
bar(f,signal,0.1);
xlabel('Time Index','color','blue','fontsize',2);
ylabel('Amplitude','color','blue','fontsize',2);
title('Rectangle Function','color','blue','fontsize',4);


figure,//mtlb_axis([-15 15 0 2]);
plot(f,mag);
xlabel('Frequency','color','blue','fontsize',2);
ylabel('Amplitude','color','blue','fontsize',2);
title('Frequency Spectrum Plot','color','blue','fontsize',4);


figure,//mtlb_axis([-15 15 0 2]);
plot(f,abs(mag));
xlabel('Frequency','color','blue','fontsize',2);
ylabel('Amplitude','color','blue','fontsize',2);
title('Frequency Spectrum Plot','color','blue','fontsize',4);
