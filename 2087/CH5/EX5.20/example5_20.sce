

//example 5.20
////calculate
//yield from well
clc;
//given
h1=2.5;                  //initial pumping depression
h=1.8;                   //heigth after recuperation
t=80;                    //time
h2=h1-h;
KbyA=2.303*60*log10(h1/h2)/t;
d=4;           //diameter of well
H=3;           //depression head
A=%pi*d^2/4;
Q=(KbyA)*A*H/3.6;
Q=round(Q);
mprintf("\nYield from well=%f lit/sec.",Q);
