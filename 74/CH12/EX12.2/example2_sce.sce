//chapter 12
// example 12.2
// page 413
n=4;// 4-bit DAC
Vofs=15;
inp=0110;
resolution=Vofs/(2^n-1);
disp(resolution)
D=0*2^3+1*2^2+1*2^1+0*2^0;//Decimal value of input
disp(D)
Vout=D*resolution
disp(Vout)