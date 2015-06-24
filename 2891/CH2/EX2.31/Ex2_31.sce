// Exa 2.31
clc;
clear;
close;
// given :
E_i=1 // magnitude of incident electric field in mV/m
E_i=1*10^-3 // magnitude of incident electric field in V/m
epsilon_0=8.854*10^-12 // permittivity in free space in F/m
mu_0=4*%pi*10^-7 //  permeability in free space in H/m
theta_i=15 // incident angle in degrees
epsilon_r1=8.5 // relative permittivity of medium 1
mu_r1=1 // relative permeability of medium 1
epsilon1=epsilon_r1*epsilon_0 // permittivity
mu1=mu_0*mu_r1 // permeability
eta1=sqrt(mu1/epsilon1) // intrinsic impedence of medium 1 in ohm
epsilon2=epsilon_0 // permittivity of medium 2
mu2=mu_0 // permeability of medium 2
eta2=sqrt(mu2/epsilon2) // intrinsic impedence of medium 2 in ohm
//formula : sind(theta_i)/sind(theta_t)=sqrt(epsilon2/epsilon1)
theta_t=asind(sind(theta_i)/(sqrt(epsilon2/epsilon1))) // transmitted angle in degrees
E_r=E_i*((eta2*cosd(theta_i)-(eta1*cosd(theta_i)))/(eta2*cosd(theta_i)+eta1*cosd(theta_i))) // reflection cofficient of electric field
disp(E_r*1000,"reflection cofficient of electric field in mV/m:")
H_i=E_i/eta1 // incident cofficient of magnetic field
disp(H_i*10^6,"incident cofficient of magnetic field in micro*A/m:")
H_r=E_r/eta1 // reflection cofficient of electric field
disp(H_r*10^6,"reflection cofficient of magnetic field in micro*A/m:")


// note : minute difference in decimal answer between scilab and book.
