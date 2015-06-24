clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-3.1   Page No-41 \n');

F=20000;               //[lb] Load applied to steel bar
L=6;                   //[in] Length of steel bar
d=1;                   //[in] Diameter of steel bar
A=%pi*(d^2)/4;         //[in^2] Area of cross section of steel bar
E=30*10^6;             //[lb/in^2] Modulus of elasticity for AISI 1020 hot-rolled steel
Sy=30000;              //[lb/in^2] Yield limit

S=F/A;                 //[lb/in^2] Stress in bar
mprintf('\na. Stress in bar=%f lb/in^2.',S);

delta=F*L/(A*E);       //[in] Change in length of bar
mprintf('\nb. bar shorten by %f in.',delta);

if Sy>S then
    mprintf('\nc. The stress of %f psi is less than Sy of %f psi, so it will\n   return to its original size because the yield limit was not exceeded.',S,Sy);
else 
    mprintf('The bar will not return to its original length')
end

//Note: The deviation of answer from the answer given in the book is due to round off error.(In the book values are rounded while in scilab actual values are taken)
