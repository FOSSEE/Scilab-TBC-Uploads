
//example 14.5
//design channel using curve of CWPC for B/D ratio
clc;funcprot(0);
//given
Q=45;         //discharge
N=0.0225;     //rugosity coefficient
m=1.05;       //critical velocity ratio

r=(15+6.44*Q)^0.382;
S=(N^2/1.338*Q^0.02)*(0.258+(15+6.44*Q)^(-0.417))^0.6135;
D=(1.818*Q/(m*(r+0.5)))^(1/2.64);
B=r*D;
B=round(B);
D=round(D*100)/100;
mprintf("Bed slope=%f.",S);
mprintf("\nWidth of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);

