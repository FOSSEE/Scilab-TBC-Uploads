// Exa 2.21
clc;
clear;
close;
// given :
f=60 // frequency in Hz
omega=2*%pi*f // angular frequency in rad/sec
sigma=5.8*10^7 // conductivity in mho/m
epsilon_0=8.854*10^-12 // permittivity in free space in F/m
mu_0=4*%pi*10^-7 //  permeability in free space in H/m
epsilon_r=1 // relative permittivity
mu_r=1 // relative permeability
epsilon=epsilon_r*epsilon_0 // permittivity
mu=mu_0*mu_r // permeability
k=sigma/(omega*epsilon) // ratio
disp(k,"ratio k is equal to")
disp("since k>>1 therefore it is very good conductor:")
alpha=sqrt(omega*mu*sigma/2) // attenuation constant in m^-1
Beta=sqrt(omega*mu*sigma/2) // phase constant in m^-1
Gamma=alpha+(%i*Beta) // propagation constant in m^-1
lambda=2*%pi/Beta // wavelength
eta=sqrt((%i*omega*mu/sigma)) // intrinsic impedence in ohm
v=lambda*f // phase velocity of wave in m/s
disp(alpha,"attenuation constant in m^-1:")
disp(Beta,"phase constant in m^-1:")
disp(Gamma,"propagation constant in m^-1:")
disp(eta,"intrinsic impedence in ohm:")
disp(lambda*100,"wavelength in cm:")
disp(v,"phase velocity of wave in m/s:")
