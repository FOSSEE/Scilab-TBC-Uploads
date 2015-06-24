//Exa 2.17
clc;
clear;
close;
// given :
sigma=0 // conductivity in mho/m
f=0.3 // frequency in GHz
f=0.3*10^9 // frequency in Hz
omega=2*%pi*f // angular frequency in rad/sec
// formula : Gamma=sqrt(%i*omega*mu*(sigma+%i*omega*epsilon))=%i*omega*sqrt(mu*epsilon)
epsilon_0=8.854*10^-12 // permittivity in free space in F/m
epsilon=9*epsilon_0 // permittivity in F/m
mu_0=4*%pi*10^-7 //  permeability in free space in H/m
mu=mu_0 // permeability in H/m
Gamma=%i*omega*sqrt(mu*epsilon) // propagation constant im m^-1
disp(Gamma,"propagation constant im m^-1:")
// formula : eta=sqrt((%i*omega*mu)/(sigma+omega*epsilon))=sqrt(mu/epsilon)
eta=sqrt(mu_0/(9*epsilon_0)) // intrinsic impedence in ohm
disp(eta,"intrinsic impedence in ohm:")


// note : answer of propagation constant in book is wrong.they put mu_0=4*10^-7 in part 1 which is wrong the correct value of mu_0 is 4*%pi*10^-7.
