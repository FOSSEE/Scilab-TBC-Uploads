

//example 5.4
//calculate discharge from tubewell
clc;
//given
d=30;           //diameter of well
s=2;            //drawdown
L=10;           //length of stainer
k=0.05;         //coefficient of permeability
r=300;          //radius of zero drawdown
Q=2.72*k*s*(L+s/2)/(100*log10(2*100*r/d));
Q=round(Q*10000)/10000;
mprintf(" discharge from tubewell=%f cumec.",Q);


