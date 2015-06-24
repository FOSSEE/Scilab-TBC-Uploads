//Digital Communication-Coding Techniques : example 8-1 : (pg 362)
dr=55;
n=(dr/6.02);
x=(1.76+(6.02*10));//signal-to-noise ratio for digitizing system
l=2^10;
y=10*log10(3*(l^2));//signal-to-quantization-noise level
printf("\nDR = 6.02dB/bit(n) \n n= %.3f",n);
printf("\nS/N = %.2f dB",x);
printf("\nL = 2^10 = %.f",l);
printf("\n(S/N)q(dB) = 10log3L^2 = %.2f dB",y);