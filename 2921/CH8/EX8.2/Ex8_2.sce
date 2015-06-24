clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-8.2 Page No.163\n');

Dw=0.105;          //[in] Wire diameter
Dm=0.620;          //[in] Mean diameter of spring
F=35;              //[lb] Load
G=11.85*10^6;      //[lb/in^2] Shear modulus of elasticity
Delta=0.5;         //[in] Deflection

Na=Delta*G*Dw^4/(8*F*Dm^3); //[] Number of active coils

Nat=Na+2;          //[] Total number of coils

Lf=2;              //[in] Free length of spring

P=(Lf-2*Dw)/Nat;   //[in] Pitch (Table 8.1)

mprintf('\n Pitch is %f in.',P);

k=G*Dw^4/(8*Dm^3*Na); //[lb/in] Spring rate

mprintf('\n Spring rate is %f lb/in.',k);

mprintf('\n The total number of coils necessary to meet design criteria are %f.',Nat);

//Note: The deviation of answer from the answer given in the book is due to round off error.(In the book values are rounded while in scilab actual values are taken)

//Note: The deviation of answer from the answer given in the book is due to round off error.(In the book values are rounded while in scilab actual values are taken)
