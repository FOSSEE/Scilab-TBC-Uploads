
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 1.3
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
n1=1.46;//refractive index of the core of W-step index fiber
delta=0.02;//relative refractive index between the core and the cladding
n2=n1-(delta*n1);//refractive index of the cladding
NA=(((n1+n2)*(n1-n2))^0.5);//numerical aperture of the fiber
thetac=asind(n2/n1);//critical angle at the core cladding interface
phi=%pi*(NA^2);//solid acceptance angle in air for the fiber
mprintf("\n Numerical Aperture is %.2f",NA);
mprintf("\n Critical angle at the core-cladding interface is =%.2fdegrees",thetac);
mprintf("\n Solid acceptance angle in air for the fiber is =%.2fradians",phi);
//the answer vary due to rounding
