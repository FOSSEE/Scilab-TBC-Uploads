// Exa 2.25
clc;
clear;
close;
// given :
Em=20 // minimum signal level required for vessel under sea water in microV/m
Em=20*10^-6 // minimum signal level required for vessel under sea water in V/m
E=100 // electric intensity of wave in V/m
v=3*10^8 // speed of light in m/s
f=4 // frequency in MHz
f=4*10^6 // frequency in Hz
omega=2*%pi*f // angular frequency in Hz
sigma=4 // conductivity of sea water in mho/m
epsilon_r=81 // relative permittivity
epsilon_0=8.854*10^-12 // permittivity in free space
epsilon=epsilon_r*epsilon_0 // permittivity
mu_r=1 // relative permeability
mu_0=4*%pi*10^(-7) // permeability in free space
mu=mu_r*mu_0 // permeability
k=(sigma)/(omega*epsilon)//ratio
disp("ratio k is equal to: ")
disp(k,"ratio:")
disp("K is >>1 so sea water is a good conductor")
eta_1=377 // intrinsic impedance in free space in ohm
alpha_1=0 // attenuation constant in free space in m^-1
beta_1=omega/v // phase constant in m^-1
mageta_2=sqrt(omega*mu/sigma) // magnitude of eta_2(intrinsic impedance of sea water in ohm) 
argeta_2=45 // argument of eta_2 in degrees
eta_2=mageta_2*cosd(argeta_2)+%i*mageta_2*sind(argeta_2) //intrinsic impedance in complex form (r*cos(theta)+%i*r*sin(theta))
TC=2*eta_2/(eta_1+eta_2) // transmission cofficient
Et=abs(TC)*E // transmitted electric field in V/m
alpha_2=sqrt(omega*mu*sigma/2) // attenuation constant for sea water in m^-1
// formula: Et*exp(-alpha_2*d)=Es
d=-(1/alpha_2)*log(Em/Et) // depth in the sea that can be reached by the aeroplane in m
disp(d,"depth in the sea that can be reached by the aeroplane in m:")


// note 1: the value of alpha_2 in book is 7.905 but it is "7.94" exactly calculated by scilab
//note 2 : The correct answer of the Depth(d) is "1.41094" the answer in the book is wrong.
