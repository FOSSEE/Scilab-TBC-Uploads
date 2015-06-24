clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-7.1 Page No.137\n');

D=2;                  //[in] Diameter of bar
W=500;                //[lb] Weight
h=1;                  //[in] Height from which the weight falls
A=%pi*D^2/4;          //[in^2] Area of cross section of bar
L=10;                 //[in] Length of bar
E=30*10^6;            //[lb/in^2] Modulus of elasticity

S=(W/A)+(W/A)*(1+(2*h*E*A/(L*W)))^(0.5);  //[lb/in^2] Stress in the bar

mprintf('\n Stress in the bar is %f lb/in^2.',S);

Delta=S*L/E;          //[in] Deflection

mprintf('\n Deflecton in the bar is %f in.',Delta);
