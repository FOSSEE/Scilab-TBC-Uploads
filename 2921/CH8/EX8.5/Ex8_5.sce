clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-8.5 Page No.166\n');

b=12;                  //[in] Width of plate
h=1;                   //[in] Thickness of plate
L=72;                  //[in] Length of plate
I=b*h^3/12;            //[in^4] Moment of inertia

Delta=4;               //[in] Deflection
E=10*10^6;             //[lb/in^2] Modulus of elasticity

F=3*Delta*E*I/L^3;     //[lb] Force

mprintf('\n The force at this point is %f lb.',F);

k=F/Delta;             //[lb/in] Stiffness

mprintf('\n stiffness is %f lb/in.',k);

//Note: The deviation of answer from the answer given in the book is due to round off error.(In the book values are rounded while in scilab actual values are taken)

//Note: The deviation of answer from the answer given in the book is due to round off error.(In the book values are rounded while in scilab actual values are taken)
