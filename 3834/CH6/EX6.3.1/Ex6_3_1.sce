//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 6.3.1
//windows XP
//Scilab version-5.5.1
clc;
clear ;
//given

L=100E12;//Length of the single-mode fiber link in nm

lambda0=1310;//average of zero-dispersion wavelength in nm
lambda=1550;//operating wavelength in nm
S0=0.092;//zero dispersion slope in ps/nm^2

y=lambda0/lambda;
z=1-y^4;
Dlambda=(S0/4)*lambda*z;//dispersion coefficient in ps/nm.Km

deltalambda=1;//light source's spectral width in nm

deltatchrom=Dlambda*deltalambda*L;//Pulse spread caused by chromatic dispersion in s

mprintf("Pulse spread caused by chromatic dispersion = %.2f ps",deltatchrom*1E-12);//multiplication by 1e-12 to convert unit from s to ps

x=6.66;//here, x= L/Ldcf assumed to be 6.66

Ddcf=-Dlambda*x;//dispersion in DCF in ps/nm.Km
mprintf("\nWe need DCF of %.2f ps/nm.km to compensate for dispersion in a conventional SM fiber.",Ddcf);
