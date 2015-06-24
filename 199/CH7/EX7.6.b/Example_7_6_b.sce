// Chapter7
// Page.No-264
// Example_7_6_b
// Frequency response of second order highpass filter
// Given
clear;clc;
Af=1.586; // Passband gain of the filter
fl=1000; // Cut-off frequency
f1=100; // Input freq in Hz
av1=Af/sqrt(1+(fl/f1)^4);
printf("\n Gain magnitude av1 at f1 is = %.5f \n",av1) // Result
f2=200; // Freq in Hz
av2=Af/sqrt(1+(fl/f2)^4);
printf("\n Gain magnitude av2 at f2 is = %.4f \n",av2) // Result
f3=700; // Freq in Hz
av3=Af/sqrt(1+(fl/f3)^4);
printf("\n Gain magnitude av3 at f3 is = %.4f \n",av3) // Result
f4=1000; // Freq in Hz
av4=Af/sqrt(1+(fl/f4)^4);
printf("\n Gain magnitude av4 at f4 is = %.4f \n",av4) // Result
f5=3000; // Freq in Hz
av5=Af/sqrt(1+(fl/f5)^4);
printf("\n Gain magnitude av5 at f5 is = %.4f \n",av5) // Result
f6=7000; // Freq in Hz
av6=Af/sqrt(1+(fl/f6)^4);
printf("\n Gain magnitude av6 at f6 is = %.4f \n",av6) // Result
f7=10000; // Freq in Hz
av7=Af/sqrt(1+(fl/f7)^4);
printf("\n Gain magnitude av7 at f7 is = %.4f \n",av7) // Result
f8=30000; // Freq in Hz
av8=Af/sqrt(1+(fl/f8)^4);
printf("\n Gain magnitude av8 at f8 is = %.4f \n",av8) // Result
f9=100000; // Freq in Hz
av9=Af/sqrt(1+(fl/f9)^4);
printf("\n Gain magnitude av9 at f9 is = %.4f \n",av9) // Result
x=[f1 f2 f3 f4 f5 f6 f7 f8 f9];
y=[av1 av2 av3 av4 av5 av6 av7 av8 av9];
gainplot(x,y);
title('Frequency Response');
xlabel('Frequency(Hz)');
ylabel('Voltage gain(dB)');

