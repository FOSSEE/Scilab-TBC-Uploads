//Chapter 6, Example 6.8
clc
funcprot(0)
//Initialisation
C=200*10**-6                     //capacitance in farad
R1=5                          //resistance in ohm
R2=50                          //resistance in ohm
L=50*10**-3                    //inductance in henry
pi=3.14                       //pi
w=500                          //angular frequency
v=10                           //voltage

//Calculation
Z1=R1-(%i*(1/(w*C)))                                   //impedance in complex form
Z2=((R2*w**2*L**2)+(%i*R2**2*w*L))/(R2**2+(w**2*L**2))                                   //impedance in complex form
Z=Z2/(Z1+Z2)                                   //impedance in complex form
V0=v*Z


function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
//based on "Scilab from a Matlab User's Point of View", Eike Rietsch,
2002
  r=sqrt(x^2+y^2);
  th = atan(y,x)*180/%pi;
endfunction

[r,th]=rect2pol(real(V0),imag(V0))                   //calling a function

//Results
printf("vo = %.1f sin( %d t + %.1f )",r,w,th)
