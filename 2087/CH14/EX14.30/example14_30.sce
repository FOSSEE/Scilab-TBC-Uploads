

//example 14.30
//Design a section of unlined canal in a loomy soil
clc;funcprot(0);
//given
Q=50;             //discharge
V=1;              //permissible velocity
s=2;              //side slope
r=6;              //B/D ratio
N=0.0225;         //rogosity coefficient

A=Q/V;
D=(A/(r+2))^0.5;
B=r*D;
P=B+2*(5*D^2)^0.5;
R=A/P;
S=(V*N/R^(2/3))^2;
mprintf("Width of channel section=%i m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\nBed slope=%f.",S);

