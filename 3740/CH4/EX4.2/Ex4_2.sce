//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 4.2
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
n1=3.6;//Refractive index of 1st medium (GaAs)
n2=1;//Refractive index of 2nd medium (air)

F=(1/4)*(n2/n1)^2*(1-((n1-n2)/(n1+n2))^2);//Dimensionless Fractional transmission for isotropic radiation
mprintf("\n F = %.3f",F);

Thetac=asind(n2/n1);//critical angle in degrees
mprintf("\n Critical angle = %.1f degrees",Thetac);//The answers vary due to round off error
