//Scilab Code for Example 3.18 of Signals and systems by
//P.Ramakrishna Rao
//A=%pi or 3.14
clear;
clc;
//Trignometric Fourier Coefficients
a(1)=integrate('sin(w)','w',0,%pi);
for n=1:8
a(2*n+1)=integrate('sin(w+2*n*w)','w',0,%pi)+integrate('sin(w-2*w*n)','w',0,%pi);
end
for n=0:8
b(n+1)=0;
end
disp(abs(a(1)),"an(a0)");
disp("an(a1-->a8)");
n=1:8;
disp(2*a(n+1));
disp("bn(b1-->b8)");
n=1:8;
disp(b(n));
