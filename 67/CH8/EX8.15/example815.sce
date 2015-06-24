//Example 8.15
//Obtain the DFT of x[n]=(a^n).u[n]
clc;
a=0.5;
for i=0:1:7
    x(i+1)=a.^i;
end
X=fft(x,-1);
disp(X,'X[k]=');