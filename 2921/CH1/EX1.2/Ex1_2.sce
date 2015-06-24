clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-1.2   Page 13 ')    //Example 1.2

Sy=61000                   //[psi] Tensile strength of AISI 1020 cold drawn steel from Appendix 4 Page no 470
SF=2;                      //[] safety factor
F=300;                     //[lb] Weight of the ball
L=36;                      //[in] Length of round bar
Sy=61000;                  //[psi] Tensile strength from Appendix 4
M=F*L;                     //[in*lb] Bending moment Appendix 2

Sall=Sy/SF;                //[psi] Allowable stress 
Z=M/Sall;                  //[in^3] Section modulus for bending Sall=M/Z
D=(32*Z/%pi)^(1/3);        //[in] Diameter of bar

//Use 13/8 in bar
D1=1.625;

mprintf('\n\n Diameter of Bar is %f in',D1);

//Checking Deflection
I=%pi*D1^4/64;              //[in^4] Moment of inertia Appendix 3
E=30*10^6;                  //[lb/in^2] Modulus of elasticity
Delta=F*L^3/(3*E*I);        //[in] Deflection 

//Note- In the book I=0.342 in^4 is used instead of I=0.3422814 in^4

mprintf('\n The deflection of bar is %f in',Delta);


//Note: The deviation of answer from the answer given in the book is due to round off error.(In the book values are rounded while in scilab actual values are taken)
