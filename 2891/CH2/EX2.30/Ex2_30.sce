// Exa 2.30
clc;
clear;
close;
// given :
sigma=5 // conductivity of sea water in mho/m
f1=25 // frequency in kHz
f1=25*10^3 // frequency in Hz
omega1=2*%pi*f1 // angular frequency in Hz
f2=25 // frequency in MHz
f2=25*10^6 // frequency in Hz
omega2=2*%pi*f2 // angular frequency in Hz
epsilon_r=81 // relative permittivity
epsilon_0=8.854*10^-12 // permittivity in free space
epsilon=epsilon_r*epsilon_0 // permittivity
mu_r=1 // relative permeability
mu_0=4*%pi*10^(-7) // permeability in free space
mu=mu_r*mu_0 // permeability
disp("when frequency=25kHz")
alpha_1=omega1*sqrt((mu*epsilon)/2*(sqrt(1+(sigma^2/(omega1^2*epsilon^2)))-1)) // attenuation constant when f=25kHz
//formula: exp(-alpha*x)=0.1
x1=2.3/alpha_1 // transmitted distance in m
disp(x1,"transmitted distance in m:")
disp("when frequency=25MHz")
alpha_2=omega2*sqrt((mu*epsilon)/2*(sqrt(1+(sigma^2/(omega2^2*epsilon^2)))-1)) // attenuation constant when f=25MHz
x2=2.3/alpha_2 // transmitted distance in m
disp(x2,"transmitted distance in m:")


//note: the values of epsilon_r=81 and of mu_r=1 for sea water which are not given in the book.
