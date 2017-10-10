
//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 1.1
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
n1=1.500;//refractive index of core
n2=1.450;//refractive index of cladding
thetac=asind(n2/n1);//critical angle for core-cladding(in degrees)
phim=90-thetac;//corresponding angle of obliqueness(in degrees)
mprintf("\n Critical Angle for the core-cladding surface is =%.2f degrees ",thetac);
mprintf("\n Corresponding Angle of Obliquences is= %.2f degrees",phim);
Alpham=asind((n1/n2)* sind(phim));//acceptance angle
mprintf("\n Acceptance Angle is =%.2f ",Alpham);
NA=(((n1+n2)*(n1-n2))^0.5);//numerical aperture of the fiber
mprintf("\n Numerical Aperture is =%.2f ",NA);
p=((NA)^2 )*100;//percentage of light collected
mprintf("\n Percentage of Light Collected is =%.2f percent",p);
//the answers vary due to rounding
