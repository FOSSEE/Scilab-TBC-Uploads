clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-3.2 Page No.43\n');

b=2;                      //[in] Width of beam
h=2;                      //[in] Height of beam
I=(b*h^3)/12;             //[in^4] Moment of inertia
F=3000;                   //[lb] Load applied to beam
L=36;                     //[in] Length of beam
c=1;                      //[in] Distance of outer most fiber from neutral axis
E=30*10^6;                //[lb/in^2] Modulus of elasticity
Sy=30000;                 //[lb/in^2] Yield strength
Su=55000;                 //[lb/in^2] Ultimate strength
SF=2;                     //[] Safety factor based on ultimate stress

M=F*L/4;                  //[lb*in] Bending moment
S=(M/I)*c;                //[lb/in^2] Bending stress

//Note-In the book I=1.33 in^4 is used instead of I=1.3333333 in^2

mprintf('\na. The maximum stress in beam is %f lb/in^2',S);

delta=-F*L^3/(48*E*I);     //[in] Maximum deflection in this beam

mprintf('\nb. The maximum deflection in this beam is %f in.',delta);

if Sy>S then
    mprintf('\nc. Yes, the stress of %f lb/in^2 is less than the yield of Sy=%f lb/in^2.',S,Sy);
else
    mprintf('\nc. No, the stress of %f lb/in^2 is greater than the yield of Sy=%f lb/in^2',S,Sy);
end

Sall=Su/SF;                //[lb/in^2] Allowable stress

if Sall>S then
    mprintf('\nd. It is acceptable because allowable stress is greater than the acttual stress of %f lb/in^2.',S);
else
    mprintf('\nd. Design is not acceptable because allowable stress is less than the actual stress of %f lb/in^2.',S)
end

//Note: The deviation of answer from the answer given in the book is due to round off error.(In the book values are rounded while in scilab actual values are taken)




