clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-4.2   Page 67 ')

F1=800;             //[lb] Vertical force
F2=600;             //[lb] Horizontal force
D=0.5;              //[in] Pin diameter
A=(%pi*D^2)/4;     //[in^2] Area of cross section of pin

F=sqrt(F1^2+F2^2);   //[lb] Resultant force on pin
S=F/A;               //[lb/in^2] Shear stress in pin

//If forces were not perpendicular, they would be added vectorially.
mprintf('\n\n Shear stress in pin is %f lb/in^2.',S);
