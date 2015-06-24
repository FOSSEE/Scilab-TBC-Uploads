

//example 5.17
//calculate discharge at 18m drawdown
clc;
//given
Q=250;           //discharge(lit/min)
H=100;           //water level in acquifer
s1=12;           //drawdown
h1=H-s1;
//let t=ln(R/r)/(pi*k)
t=(H^2-h1^2)/Q;
h2=H-18;
Q1=(H^2-h2^2)/t;
mprintf("discharge at 18m drawdown=%i lpm",Q1);

