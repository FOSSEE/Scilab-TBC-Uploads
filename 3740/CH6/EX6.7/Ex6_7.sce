//Optoelectronics - An Introduction, 2nd Edition by J. Wilson and J.F.B. Hawkes
//Example 6.7
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;

//given
Lambda=10.6e-6;//Wavelength of the laser in m
f=200e-3;//Focal length of the lens in m
D=50e-3;//Diameter of aperture of focusing lens

rs=2*Lambda*f/(%pi*D);//Radius of the focused spot in m
mprintf("\n rs = %.1f um",rs/1e-6);//Dividing by 10^(-6) to convert to um
//The answers vary due to round off error

//Let the ratio w(z)/w0 be w
w=1.1;
w0=rs;//Also given

z=%pi*w0^2/Lambda*sqrt((w^2)-1);//Depth of focus in m
mprintf("\n z = %.2f mm",z/1e-3);//Dividing by 10^(-3) to convert to mm
//The answers vary due to round off error
