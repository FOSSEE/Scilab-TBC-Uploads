//clear//
//
clc;
s = sym('s');
B = sym('B');
Eo = sym('Eo');
z = sym('z');
ax = sym('ax');
EsL = Eo*(ax+%i*ay)*exp(%i*s)*exp(-%i*B*z);
EsR = Eo*(ax-%i*ay)*exp(-%i*B*z);
Est = Eo*exp(%i*s/2)*(2*cos(s/2)*ax-%i*2*%i*sin(s/2)*ay)*exp(-%i*B*z);
disp(EsL,'Left circularly polarized field EsL=')
disp(EsR,'Right circularly polarized field EsR=')
disp(Est,'Total Elecetric field of a linearly polarized wave EsT =')
//Result
//Left circularly polarized field EsL=   
//  (%i*ay+ax)*Eo*exp(%i*s-%i*z*B)   
//Right circularly polarized field EsR=   
//  (ax-%i*ay)*Eo*%e^-(%i*z*B)   
//Total Elecetric field of a linearly polarized wave EsT =   
// Eo*(2*ay*sin(s/2)+2*ax*cos(s/2))*exp(%i*s/2-%i*z*B)   
