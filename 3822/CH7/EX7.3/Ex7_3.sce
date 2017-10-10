
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 7.3
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
Df=80*10^-6;// diameter of the fiber in m
Ds=45*10^-6;// diameter of the source in m
NA=0.15;// numerical aperture of the fiber
Mmax=(Df/Ds);// maximum magnification
eta_d=((NA)^2)*100;// coupling efficiency considering direct coupling
eta_l=((Mmax)*(NA^2))*100;// coupling efficiency considering lens coupling
mprintf("\nThe Maximum Magnification factor is= %.2f",Mmax);
mprintf("\nThe coupling efficiency considering direct coupling is= %.2fpercent",eta_d);
mprintf("\nThe coupling efficiency considering lens coupling is= %.3fpercent",eta_l);//the answer vary due to rounding
