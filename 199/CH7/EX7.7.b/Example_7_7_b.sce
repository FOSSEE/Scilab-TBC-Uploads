// Chapter7
// Page.No-270
// Example_7_7_b
// Frequency response of bandpass filter
// Given
clear;clc;
Aft=4; // Passband gain of the filter
fl=200; // Lower Cut-off frequency
fh=1000; // Higher Cut-off frequency
f1=10; // Input freq in Hz
av1=(Aft*(f1/fl))/sqrt((1+(f1/fl)^2)*(1+(f1/fh)^2));
printf("\n Gain magnitude av1 at f1 is = %.4f \n",av1) // Result
f2=30; // Freq in Hz
av2=(Aft*(f2/fl))/sqrt((1+(f2/fl)^2)*(1+(f2/fh)^2));
printf("\n Gain magnitude av2 at f2 is = %.4f \n",av2) // Result
f3=100; // Freq in Hz
av3=(Aft*(f3/fl))/sqrt((1+(f3/fl)^2)*(1+(f3/fh)^2));
printf("\n Gain magnitude av3 at f3 is = %.4f \n",av3) // Result
f4=200; // Freq in Hz
av4=(Aft*(f4/fl))/sqrt((1+(f4/fl)^2)*(1+(f4/fh)^2));
printf("\n Gain magnitude av4 at f4 is = %.4f \n",av4) // Result
f5=447.2; // Freq in Hz
av5=(Aft*(f5/fl))/sqrt((1+(f5/fl)^2)*(1+(f5/fh)^2));
printf("\n Gain magnitude av5 at f5 is = %.4f \n",av5) // Result
f6=700; // Freq in Hz
av6=(Aft*(f6/fl))/sqrt((1+(f6/fl)^2)*(1+(f6/fh)^2));
printf("\n Gain magnitude av6 at f6 is = %.4f \n",av6) // Result
f7=1000; // Freq in Hz
av7=(Aft*(f7/fl))/sqrt((1+(f7/fl)^2)*(1+(f7/fh)^2));
printf("\n Gain magnitude av7 at f7 is = %.4f \n",av7) // Result
f8=2000; // Freq in Hz
av8=(Aft*(f8/fl))/sqrt((1+(f8/fl)^2)*(1+(f8/fh)^2));
printf("\n Gain magnitude av8 at f8 is = %.4f \n",av8) // Result
f9=7000; // Freq in Hz
av9=(Aft*(f9/fl))/sqrt((1+(f9/fl)^2)*(1+(f9/fh)^2));
printf("\n Gain magnitude av9 at f9 is = %.4f \n",av9) // Result
f10=10000; // Freq in Hz
av10=(Aft*(f10/fl))/sqrt((1+(f10/fl)^2)*(1+(f10/fh)^2));
printf("\n Gain magnitude av10 at f10 is = %.4f \n",av10) // Result
x=[f1 f2 f3 f4 f5 f6 f7 f8 f9 f10];
y=[av1 av2 av3 av4 av5 av6 av7 av8 av9 av10];
gainplot(x,y);
title('Frequency Response');
xlabel('Frequency(Hz)');
ylabel('Voltage gain(dB)');

