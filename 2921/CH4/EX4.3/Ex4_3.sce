clc;
clear;
mprintf('MACHINE DESIGN\n Timothy H. Wentzell, P.E.\n Example 4.3   Page no 68');

P=50;            //[hp] Power transmitted
N=300;           //[rpm] Speed
D=10;            //[in] Effective pitch diameter of sprocket
d=1;             //[in] Diameter of shaft from figure 4.3
Z=(%pi*d^3)/16;  //[in^3] Section modulus of shaft
A=(%pi*d^2)/4;   //[in^2] Area of cross section

T=(63000/N)*P;  //[lb*in] Torque required to transmit power
F=T/(D/2);       //[lb] Driving force in chain

Ss=F/A;          //[lb/in^2] Shear stress in shaft

St=T/Z;          //[lb/in^2] Torsional stress in shaft

S=Ss+St;         //[lb/in^2] Resultant stress

//Note-There is mistake in addition of Ss and St.

//This value would be compared to shear stress allowable for shaft material

mprintf('\n\n The combined stress in 1 inch diameter shaft is %f lb/in^2.',S);
