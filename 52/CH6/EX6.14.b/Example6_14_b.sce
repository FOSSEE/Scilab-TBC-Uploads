//Example 6.14b
//Program to Plot Magnitude Responce of ideal Hilbert Transformer
//using Blackman Window 
//N=11
clear;
clc ;
close ;
N=11;
U=6;
for n=-5+U:1:5+U
h_balckmann(n) = 0.42+0.5*cos(2*%pi*(n-U)/(N-1))+0.08*cos(4*%pi*(n-U)/(N-1));
if n==6  
hd(n)=0;      
else
hd(n)=(1-cos(%pi*(n-U)))/(%pi*(n-U));
end
h(n)=hd(n)*h_balckmann(n);
end
[hzm ,fr]= frmag (h,256) ;
figure
plot (2*fr ,-hzm);
a = gca ();
xlabel ('Frequency w*pi');
ylabel ('H(exp(j*w))');
title ('Frequency Response of Hilbert Transformer with N=11 using Blackman Window');
xgrid (2);