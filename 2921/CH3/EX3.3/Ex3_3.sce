clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-3.3 Page No.45\n');

Su=80*10^3;          //[lb/in^2] Ultimate strength
d=0.5;               //[in] Diameter of pin
As=%pi*d^2/4;        //[in^2] Area of cross section of pin
F=20*10^3;           //[lb] Load acting

Ss=F/(2*As);         //[lb/in^2] Shear stress

if 0.5*Su>=Ss & 0.6*Su>=Ss then
    mprintf('Pin would not fail');
else
    mprintf('\n Actual stress is too high and the pin would fail.');
end
