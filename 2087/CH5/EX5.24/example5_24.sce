

//example 5.24
//calculate yield from well
clc;
//given
h1=2.5;                  //initial pumping depression
h=1;                   //heigth after recuperation
t=60;                    //time
h2=h1-h;
KbyA=2.303*60*log10(h1/h2)/t;
d=2;           //diameter of well
H=3;           //depression head
A=%pi*d^2/4;
Q=(KbyA)*A*H;
Q=round(Q*1000)/1000;
mprintf("\nYield from well=%f cubic metre/hour.",Q);
