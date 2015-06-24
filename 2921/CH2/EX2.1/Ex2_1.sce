clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-2.1   Page 26 ')    //Example 2.1

T=1080*12;                  //[in*lb] Torque in axle
d=30;                       //[in] Diameter of tire
F=T/(d/2);                  //[lb] Force exerted on the road surface

mprintf('\n\n The tire exerts %f lb force on the road surface',F);
