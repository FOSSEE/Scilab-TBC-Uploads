


//example14.19
//determine dimension of channel using chezy's equation
//calculate the value of manning n
clc;funcprot(0);
//given
Q=21.5;          //discharge
S=1/2500;        //slope of bottom
C=70;
r=1/1.73;
//taking R=0.5*D
//and keeping it in Q=V*A;where V=C(RS)^0.5 and A=D^2(2*(4/3)^0.5-1/3^0.5);
D=(21.5/1.7146)^(1/2.5);
B=2*D*((4/3)^0.5-(1/3)^0.5);
B=round(B*100)/100;
D=round(D*100)/100;
mprintf("side slope=%f.",r);
mprintf("\nWidth of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);

R=0.5*D;
V=C*(R*S)^0.5;
n=R^(2/3)*S^0.5/V;
n=round(n*1000)/1000;
mprintf("\n\nvalue of manning n=%f.",n);
