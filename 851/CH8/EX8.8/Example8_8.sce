//clear//
//Caption:Convolutional Encoding – Transform domain approach
//Example8.8:Convolutional code - Transform domain approach
clc;
D = poly(0,'D');
g1D = 1+D+D^2; //generator polynomial 1
g2D = 1+D^2; //generator polynomial 2
mD = 1+0+0+D^3+D^4; //message sequence polynomial representation
x1D = g1D*mD; //top output polynomial
x2D = g2D*mD; //bottom output polynomial
x1 = coeff(x1D);
x2 = coeff(x2D);
disp(modulo(x1,2),'top output sequence')
disp(modulo(x2,2),'bottom output sequence')
//Result
//top output sequence   
//    1.    1.    1.    1.    0.    0.    1.  
// 
// bottom output sequence   
//    1.    0.    1.    1.    1.    1.    1. 
