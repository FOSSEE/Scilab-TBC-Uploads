// Exa 5.3
clc;
clear;
close;
// Given data
D=16;
D1= D/2;// first MSB output in volt
disp(D1,"First MSB output in volt");
D2= D/4;// second MSB output in volt
disp(D2,"Second MSB output in volt");
D3= D/8;// third MSB output in volt
disp(D3,"Third MSB output in volt");
D4= D/16;// fourth MSB output in volt
disp(D4,"Fourth MSB output in volt");
D5= D/32;// fifth MSB output in volt
disp(D5,"Fifth MSB output in volt");
D6= D/64;// sixth MSB (LSB) output in volt
disp(D6,"Sixth MSB (LSB) output in volt");
disp(D6,"The resolution is equal to the weight of the LSB in volt. ")
// Full scale output occurs for a digital input of 111111
FSO= D1+D2+D3+D4+D5+D6;// in volt
disp(FSO,"Full scale output occurs for a digital input of 111111 in volt")
// The output voltage for a digital input of 101011
D0=16;
D1=16;
D2=0;
D3=16;
D4=0;
D5=16;
Vout= ( D0*2^0 + D1*2^1 + D2*2^2 + D3*2^3 + D4*2^4 + D5*2^5  )/64;// in volt
disp(Vout,"The output voltage for  digital input of 101011 in volt")
