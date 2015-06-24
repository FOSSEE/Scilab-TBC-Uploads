// chapter 12
// example 12.3
// page 414
n=8;// 8 bit DAC
R=20*10^-3;//resolution V/LSB
inpt=10000000;
Vofs=R*(2^n-1);
disp(Vofs)
D=1*2^7+0*2^6+0*2^5+0*2^4+0*2^3+0*2^2+0*2^1+0*2^0;
disp(D)
Vout=R*D;//output voltage
disp(Vout)