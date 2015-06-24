

//example14.18
//design non-allvial channel using Bazin's formula
clc;funcprot(0);
//given
Q=15;               //discharge
V=0.75;             //mean velocity
s=1;                //side slope
K=1.3;              //bazin's coefficient
//width is five times its depth

A=Q/V;
D=(A/6)^0.5;
B=5*D;
P=B+2*D*1.41;
R=A/P;
C=87/(1+K/(R)^0.5);
S=(V/C)^2/R;
B=round(B*10)/10;
D=round(D*100)/100;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);
mprintf("\nBed slope=%f.",S);
