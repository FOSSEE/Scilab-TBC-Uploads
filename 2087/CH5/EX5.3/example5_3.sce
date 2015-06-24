

//example 5.3
//calculate yield from well
clc;
//given
d=30;        //well diameter
L=15;        //strainer length
P=50;        //coefficient of permeability
s=0.2;       //effective size of sand
b=3;         //drawdown
r=150;       //radius of drawdown

Q=2.72*L*P*b/(log10(r*2*100/d)*24*3.6);
Q=round(Q*10)/10;
mprintf(" yield from well=%f lit/sec.",Q);

