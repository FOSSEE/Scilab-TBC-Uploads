

//example 5.6
//calculate yield from well
clc;
//given
b=30;                  //thickness of acquifer
s=4;                   //drawdown
r=0.1;                 //well radius
k=36;                  //permeability coefficient
R=3000*s*(k/(24*3600))^0.5;

Q=2.72*b*k*s/(log10(R/r)*24*3.6);
Q=round(Q*10)/10;
mprintf("yield from well=%f lit/sec.",Q);

