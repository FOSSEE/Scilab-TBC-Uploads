clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-3.6 Page No.55\n');

L=60;                    //[in] Length of column
Sy=36000;                //[lb/in^2] Yield strength
SF=2;                    //[]Safty factor
E=30*10^6;               //[lb/in^2] Modulus of elasticity

A=2.26;                  //[in^2] Area of cross section (Appendix 5.4)
I=0.764;                 //[in^4] Moment of inertia (Appendix 5.4)

r=sqrt(I/A);             //[in] Radius of gyration

K=0.65;                  //[] End support condition factor from Figure 3.8
Le=K*L;                  //[in] Effective length

mprintf('\n The effective length is %f in.',Le);

SR=Le/r;                 //[] Slenderness ratio

mprintf('\n The slenderness ratio is %f.',SR);

Cc=sqrt(2*%pi^2*E/Sy);   //[] Column constant

mprintf('\n The column constant is %f.',Cc);

if Cc>SR then
    mprintf('\n The column constant is greater than slenderness ratio, so use the Johnson formula.');
end

F=(A*Sy/SF)*(1-Sy*SR^2/(4*%pi^2*E));

mprintf('\n The acceptable load for a safty factor of 2 is %f lb.',F);
