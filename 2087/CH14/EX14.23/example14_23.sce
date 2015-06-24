
//example 14.23
//determine whether flow is critical or sub-critical
clc;funcprot(0);
//given
Q=17;           //discharge
B=6;            //base of channel
s=1/2;          //side slope
D=1.5;          //depth of channel

A=D*((B+B/s)/2);
V=Q/A;
P=B+2*((D/s)^2+D^2)^0.5;
R=A/P;
F=V/(9.81*R)^0.5;      //froud number
F=round(F*100)/100;
//since F<1;
mprintf("Froud number=%f.\nF<1.\nFlow is sub-critical",F);
