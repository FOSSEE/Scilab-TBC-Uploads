

//exapple 9.6 
clc; funcprot(0);
// Initialization of Variable
rho=998;//density of water
mu=1.25/1000;//viscosity of water
w=100;//mass of water
pi=3.1428;
g=9.81;
rhog=2280;//density of glass
wg=60;//mass of glass
d=45*10^-6;//diameter of glass sphere
//claculation
rhom=(w+wg)/(w/rho+wg/rhog);//density of mixure
e=w/rho/(w/rho+wg/rhog);//volume fraction of watter
//using charts
zi=exp(-4.19*(1-e));

K=d*(g*rho*(rhog-rho)*zi^2/mu^2)^(1/3);//stoke's law coeff.
disp(K);
if K<3.3 then
    disp("settling occurs in stoke-s law range");
    U=g*d^2*e*zi*(rhog-rhom)/18/mu;
    disp(U,"settling velocity in m/s:")
else
    disp("settling does not occurs in stoke-s law range");
end
