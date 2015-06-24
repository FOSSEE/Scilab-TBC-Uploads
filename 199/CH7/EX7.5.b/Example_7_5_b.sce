// Chapter7
// Page.No-263
// Example_7_5_b
// Frequency response of highpass filter
// Given
clear;clc;
Af=2; // Passband gain of the filter
fl=1000; // Cut-off frequency
f1=100; // Input freq in Hz
av1=(Af*(f1/fl))/sqrt(1+(f1/fl)^2);
printf("\n Gain magnitude av1 at f1 is = %.2f \n",av1) // Result
f2=200; // Freq in Hz
av2=(Af*(f2/fl))/sqrt(1+(f2/fl)^2);
printf("\n Gain magnitude av2 at f2 is = %.2f \n",av2) // Result
f3=400; // Freq in Hz
av3=(Af*(f3/fl))/sqrt(1+(f3/fl)^2);
printf("\n Gain magnitude av3 at f3 is = %.2f \n",av3) // Result
f4=700; // Freq in Hz
av4=(Af*(f4/fl))/sqrt(1+(f4/fl)^2);
printf("\n Gain magnitude av4 at f4 is = %.2f \n",av4) // Result
f5=1000; // Freq in Hz
av5=(Af*(f5/fl))/sqrt(1+(f5/fl)^2);
printf("\n Gain magnitude av5 at f5 is = %.2f \n",av5) // Result
f6=3000; // Freq in Hz
av6=(Af*(f6/fl))/sqrt(1+(f6/fl)^2);
printf("\n Gain magnitude av6 at f6 is = %.2f \n",av6) // Result
f7=7000; // Freq in Hz
av7=(Af*(f7/fl))/sqrt(1+(f7/fl)^2);
printf("\n Gain magnitude av7 at f7 is = %.2f \n",av7) // Result
f8=10000; // Freq in Hz
av8=(Af*(f8/fl))/sqrt(1+(f8/fl)^2);
printf("\n Gain magnitude av8 at f8 is = %.2f \n",av8) // Result
f9=30000; // Freq in Hz
av9=(Af*(f9/fl))/sqrt(1+(f9/fl)^2);
printf("\n Gain magnitude av9 at f9 is = %.2f \n",av9) // Result
f10=100000; // Freq in Hz
av10=(Af*(f10/fl))/sqrt(1+(f10/fl)^2);
printf("\n Gain magnitude av10 at f10 is = %.2f \n",av10) // Result
x=[f1 f2 f3 f4 f5 f6 f7 f8 f9 f10];
y=[av1 av2 av3 av4 av5 av6 av7 av8 av9 av10];
gainplot(x,y);
title('Frequency Response');
xlabel('Frequency(Hz)');
ylabel('Voltage gain(dB)');

