clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-6.3 Page No.122\n');

Alpha=6.5*10^-6;       //[in/(in*F)] Thermal expansion coefficient (Appendix 8)
L=5;                   //[in] Length of engagement

Delta=0.01204;       //[Degree] Elongation

DT=Delta/(Alpha*L);    //[F] The temperature we would need to heat this bolt above the sevice temperature

mprintf('\n The temperature we would need to heat this bolt above the sevice temperature is %f F.',DT);
