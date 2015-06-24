//Example 6.10

clc;clear;close;
x=[1 1 2 2 3 3];
//Calculation of DFT
X=dft(x,-1);
X=clean(X);
disp(x,'Given Sequence is x(n): ');
disp(X,'DFT of the Sequence is X(k): ');
subplot(3,1,1);
plot2d3(x);
title('Given Seqence x[n]:');ylabel('Amplitude-->');xlabel('n-->');
subplot(3,1,2);
plot2d3(abs(X));
title('Magnitude Spectrum |X(k)|');xlabel('k-->');
subplot(3,1,3);
plot2d3(atan(X));
title('Phase Spectrum /_X(k)');xlabel('k-->');

