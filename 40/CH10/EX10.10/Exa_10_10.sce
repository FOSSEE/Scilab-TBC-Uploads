//Maximally flat FIR filter design
Fp=0.2;
Fs=0.4;
Fc=0.3;
Ft=0.2;
N0=1+0.5/Ft^2;
N0=ceil(N0);
alpha=(cos(%pi*Fc))^2;
k=5;Mmin=14;
L=Mmin-k;
N=2*Mmin-1;
disp(N,'Hence with this length we can get maximally flat FIR filter with no ripples in passband');