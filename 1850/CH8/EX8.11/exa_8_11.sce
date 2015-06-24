// Exa 8.11
clc;
clear;
close;
//given data
Dn=16;// in volt
MSB1= Dn/2;// in volt
disp(MSB1,"The first MSB output in volt")
MSB2= Dn/4;// in volt
disp(MSB2,"The second MSB output in volt")
MSB3= Dn/8;// in volt
disp(MSB3,"The third MSB output in volt")
MSB4= Dn/16;// in volt
disp(MSB4,"The forth MSB output in volt")
MSB5= Dn/32;// in volt
disp(MSB5,"The fifth MSB output in volt")
MSB6= Dn/64;// in volt
disp(MSB6,"The sixth MSB (LSB) output in volt")
resolution= MSB6;// in volt
disp(resolution,"The resolution in volt")
fullScaleOutput= MSB1+MSB2+MSB3+MSB4+MSB5+MSB6;
disp(fullScaleOutput,"Full scale output occurs for digital input of 111111 in volt");
// For digital input 101011
D0=16;
D1=16;
D2=0;
D3=16;
D4=0;
D5=16;

Vout= (D0*2^0 + D1*2^1 + D2*2^2 + D3*2^3 + D4*2^4 + D5*2^5)/2^6;// in volt
disp(Vout,"The voltage output for a digital input of 101011 in volt")

