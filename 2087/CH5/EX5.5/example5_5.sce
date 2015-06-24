

//example 5.5
//design tube well
clc;
//given
Q=0.08;            //yield required
b=30;              //thickness of acquifer
R=300;             //Radius of circle of influence
k=60;              //permeability coefficient
s=5;               //Drawdown
r=R/(10^(2.72*b*s*k/(3600*24*Q)));
r=round(r*10000)/10000;
mprintf("Radius of well=%f m",r);


