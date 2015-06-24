// Chapter8
// Page.No-326, Figure.No-8.7(a)
// Example_8_2
// Output voltage swing
// Given
clear;clc;
vin=5*10^-3;
R=100;
Vd1=-0.7; // Output voltage during positive half-cycle of the input
Vd2=5.1; // Output voltage during negative half-cycle of the input
printf("\n Output voltage during positive half-cycle of the input is = %.1f V \n",Vd1) // Since zener diode is forward biased
printf("\n Output voltage during negative half-cycle of the input is = %.1f V \n",Vd2) // Since zener diode is reverse-biased
t=0:0.1:2*%pi;
vut=0.5*sin(t);
subplot(2,1,1);
plot(t,vut);
title('Input Voltage');
xlabel('t');
ylabel('Vin');
c=1;
for t=0:0.1:2*%pi
if t<%pi
  v(c)=-0.7;
  else
  v(c)=5.1;
end
c=c+1;
subplot(2,1,2);
plot(v);
end
title('Output Waveform');
xlabel('t');
ylabel('Vo');