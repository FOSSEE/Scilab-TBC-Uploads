//Book Name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 11
//example 11.1
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Kphi=3;                    //constant in Vsec
Ra=1;                     //resistance in ohm
La=10;                   //inductance in mH
V=600;                   //rated voltage of the motor in volt
Vt=150;                 //starting voltage in volt
Tl=20;                //constant torque in Nm
m=6;                  //total moment of inertia in Nm sec^2
omegaf=(Vt/Kphi)-((Ra*Tl)/Kphi^(2));
nf=(omegaf*60)/(2*%pi);
mprintf("\nThe motor speed after 5 sec is %d rpm",nf)
//The plot obtained in the book is using a simulation software using specific design that is avaliable in the software.In scilab or xcos there is no option to simulate DC shunt motor
