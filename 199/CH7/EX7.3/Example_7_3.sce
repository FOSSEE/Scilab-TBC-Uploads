// Chapter7
// Page.No-257
// Example_7_3
// Frequency response of low pass filter
// Given
clear;clc;
Af=2; // Passband gain of the filter
fh=1000; // Cut-off frequency
f1=10; // Input freq in Hz
av1=Af/sqrt(1+(f1/fh)^2);
printf("\n Gain magnitude av1 at f1 is = %.2f \n",av1) // Result
f2=100; // Freq in Hz
av2=Af/sqrt(1+(f2/fh)^2);
printf("\n Gain magnitude av2 at f2 is = %.2f \n",av2) // Result
f3=200; // Freq in Hz
av3=Af/sqrt(1+(f3/fh)^2);
printf("\n Gain magnitude av3 at f3 is = %.2f \n",av3) // Result
f4=700; // Freq in Hz
av4=Af/sqrt(1+(f4/fh)^2);
printf("\n Gain magnitude av4 at f4 is = %.2f \n",av4) // Result
f5=1000; // Freq in Hz
av5=Af/sqrt(1+(f5/fh)^2);
printf("\n Gain magnitude av5 at f5 is = %.2f \n",av5) // Result
f6=3000; // Freq in Hz
av6=Af/sqrt(1+(f6/fh)^2);
printf("\n Gain magnitude av6 at f6 is = %.2f \n",av6) // Result
f7=7000; // Freq in Hz
av7=Af/sqrt(1+(f7/fh)^2);
printf("\n Gain magnitude av7 at f7 is = %.2f \n",av7) // Result
f8=10000; // Freq in Hz
av8=Af/sqrt(1+(f8/fh)^2);
printf("\n Gain magnitude av8 at f8 is = %.2f \n",av8) // Result
f9=30000; // Freq in Hz
av9=Af/sqrt(1+(f9/fh)^2);
printf("\n Gain magnitude av9 at f9 is = %.2f \n",av9) // Result
f10=100000; // Freq in Hz
av10=Af/sqrt(1+(f10/fh)^2);
printf("\n Gain magnitude av10 at f10 is = %.2f \n",av10) // Result
x=[f1 f2 f3 f4 f5 f6 f7 f8 f9 f10];
y=[av1 av2 av3 av4 av5 av6 av7 av8 av9 av10];
gainplot(x,y);
title('Frequency Response');
xlabel('Frequency(Hz)');
ylabel('Voltage gain(dB)');

