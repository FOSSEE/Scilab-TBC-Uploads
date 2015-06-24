clc;
//page no 199
// prob no 6.3.1
// RC phase shift scillator
// In the given problem small-signal o/p resistance Rc=40kohm
// collector bias resistor, rc=10kohm,f=400 Hz;
// all resistances are in Kohm and freq in Hz
f=400;rc= 10; Rc= 40;
// Minimum value of beta is given by Bomin= 23+(4*Ro/R)+(29*R/Ro)
// For minimum beta Ro/R=2.7, we represent Ro/R=b
b=2.7;
Bomin=23+(4*b)+(29*1/b);
disp(Bomin,'1.The minimum value of beta is');
//Determination of R and C components
//R0 is given by (rc*Rc)/(rc+Rc)
R0=(rc*Rc)/(rc+Rc);
R=2.7* R0;
disp('Kohm',R,+'2.The value of resistor R=');
c=1/(2*%pi*f*R*sqrt(6+(4*b)))*10^9;
disp('pF',c,+'3.The value of capacitor is ');