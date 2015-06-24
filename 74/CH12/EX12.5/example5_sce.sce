//chapter 12
//example 12.5
// page 414
n=12;//12-bit DAC
R=8*10^-3;// step size
Vofs=R*(2^n-1);
disp(Vofs)
RESpercentage=(R/Vofs)*100
D=0*2^11+1*2^10+0*2^9+1*2^8+0*2^7+1*2^6+1*2^5+0*2^4+1*2^3+1*2^2+0*2^1+1*2^0;// decimal value of 010101101101
disp(D)
Vout=R*D;
disp(Vout)