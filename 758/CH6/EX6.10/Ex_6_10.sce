//Example 6.10

clc;clear;close;
x=[1 1 2 2 3 3];
//Calculation of DFT
X=fft(x,-1);
X=clean(X);
disp(x,'Given Sequence is x(n): ');
disp(X,'DFT of the Sequence is X(k): ');
subplot(3,1,1);
plot2d3(x);
title('Given Seqence x[n]:');ylabel('Amplitude--&gt;');xlabel('n--&gt;');
subplot(3,1,2);
plot2d3(abs(X));
title('Magnitude Spectrum |X(k)|');xlabel('k--&gt;');
subplot(3,1,3);
plot2d3(atan(X));
title('Phase Spectrum /_X(k)');xlabel('k--&gt;');