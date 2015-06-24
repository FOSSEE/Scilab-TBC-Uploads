clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-8.1 Page No.160\n');

Dm=0.625;            //[in] Mean diameter of spring
F=35;              //[lb] Load


K=1.25;           //[] Wahl factor for Dm/Dw=6.25 (figure 8.8)
Q=190000;         //[lb/in^2] Expected ultimate strength 

LF=0.263;         //[] Loading factor

Dw=(K*8*F*Dm/(LF*%pi*Q))^(1/2.846); //[in] Wire diameter

mprintf('\n The wire diameter of spring is %f in.',Dw);

//Use U.S Steel 12-gage wire: Dw=0.105 in.
