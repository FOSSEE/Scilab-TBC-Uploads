clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-7.2 Page No.139\n');

W=2000;             //[lb] Weight of automobile
L=36;               //[in] Length of stop
D=2;                //[in] Diameter of steel bar
V=5*5280*12/3600;   //[in/s] Velocity of automobile

A=%pi*D^2/4;        //[in^2] Area of cross section of bar
E=30*10^6;          //[lb/in^2] Modulus of elasticity

k=A*E/L;            //[lb/in] Stiffness of the bar
g=386;              //[in/s^2] Acceleration due to gravity

Delta=sqrt(2/k*W*(V^2/(2*g)+0));  //[in] Deflection

mprintf('\n The deflection in the bar is %f in.',Delta);

S=Delta*E/L;        //[in] Stress in the bar

//Note-In the book Delta=0.124 is used instead of Delta=0.123800

mprintf('\n The stress in the bar is %f lb/in^2.',S);
