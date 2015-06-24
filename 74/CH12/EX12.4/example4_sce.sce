//chapter
//example 12.4
// page 414
n=4;// 4-bit R-2R ladder
Vofs=5;
R=Vofs/(2^n-1);//resolution
disp(R)
D1=1*2^3+0*2^2+0*2^1+0*2^0;//for input 1000
disp(D1)
Vout1=R*D1;
disp(Vout1)
D2=1*2^3+1*2^2+1*2^1+1*2^0;// for input 1111
Vout2=R*D2;
disp(Vout2)