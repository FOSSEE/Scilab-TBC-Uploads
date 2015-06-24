clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-3.5 Page No.53\n');

L=30;                      //[in] Length of link
d=5/8;                     //[in] Diameter of link
I=%pi*d^4/64;              //[in^4] Moment of inertia
A=%pi*d^2/4;               //[in^2] Area of cross section
E=30*10^6;                 //[lb/in^2] Modulus of elasticity

r=sqrt(I/A);               //[in] Radius of gyration

mprintf('\n The radius of gyration %f in.',r);

K=1;                       //[] End support condition factor

Le=K*L;                    //[in] Effective length

mprintf('\n Effective length is %f in',Le);

SR=Le/r;                   //[] Slenderness ratio

mprintf('\n Slenderness ratio is %f.',SR)

Sy=42000;                 //[lb/in^2] Yield strength

Cc=sqrt(2*%pi^2*E/Sy);    //[] Column constant

mprintf('The column constant is %f.',Cc);

if SR>Cc then
    mprintf('\n Slenderness ratio is greater than column constant, so use the euler formula')
end

I=%pi*d^4/64;             //[in^4] Moment of inertia

mprintf('\n The moment of inertia is %f in^4',I);

Pc=%pi^2*E*I/Le^2;        //[lb] Critical force

//Note- In the book I=0.0075 in^4 is used instead of I=0.0074901 in^4

mprintf('\n The critical force is %f lb.',Pc);
