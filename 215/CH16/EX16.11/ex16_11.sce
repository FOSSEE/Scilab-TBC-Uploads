clc
//Example 16.11
disp('Given')
disp('A high pass filter with cutoff frequency of 3k Hz')
//Cutoff frequency(wc)=1/(R*C)
//Let us select some standard value of resistor
disp('Let R=4.7k ohm')
fc=3*10^3;R=4.7*10^3;
wc=2*%pi*fc
C=1/(R*wc)
printf("\n C=%3.2f nF ",C*10^9);
s=poly(0,'s')
h=syslin('c',(R*C*s)/((1+s*R*C)))
disp(h)
HW = frmag(h,512);
w=0: %pi /511: %pi ;
plot(w,HW)
