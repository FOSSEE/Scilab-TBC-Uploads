
//example 6.1
clc; funcprot(0);
//exapple 6.1 
// Initialization of Variable
atp=100.2*1000;
g=9.81;
rho_w=996;
rho_toluene=867;
vap_pre_toluene=4.535*1000;
viscosity_toluene=5.26/10000;
//calculation
m=(atp-vap_pre_toluene)/rho_toluene/g;
disp(m,"Max. height of toluene supported by atm. pressure (in m):");
//part(1)
hopw=0.650;//head of pump in terms of water
hopt=hopw*rho_w/rho_toluene;//head of pump in terms of toluene
Q=1.8*10^-3;//flow in m^3/s
d=2.3*10^-2;//diameter of pipe
pi=3.14127;
//u=4*Q/pi/d^2
//substituting this for reynolds no.
Re=4*Q*rho_toluene/pi/d/viscosity_toluene;//reynolds no.
disp(Re ,"reynolds no :");
phi=0.0396*Re^-0.25;
//since both LHS and RHS are function of x(max. ht. ab. toluene) 
//we define a new variable to solve the eqn
//y=(atp/rho_toluene/g)-(vap_pre_toluene/rho_toluene/g)-(4*phi*16*Q^2*x/pi^2/d^5/g)-hopt;
//y=x 
//these are two equations
b=[0;((atp/rho_toluene/g)-(vap_pre_toluene/rho_toluene/g)-hopt)];
A=[1 -1;1 4*phi*16*Q^2/pi^2/d^5/g];
x=A\b;
disp(x(2,1), "the maximum height above toulene in the tank the pump can be located without risk while flow rate is 1.80dm^3/s (in m):");
//solution of part(2)
l=9//length 
u=sqrt(((atp/rho_toluene/g)-(vap_pre_toluene/rho_toluene/g)-hopt-l)*d*g/4/phi/l);//fluid velocity in pipes
Q=pi*d^2*u/4;
disp(Q,"Maximum delivery rate if pump is located 9m above toluene tank(in m^3/s)")
//solution of part(3)
//clubing d together we get
Q=1.8/1000;
a=(atp/rho_toluene/g)-(vap_pre_toluene/rho_toluene/g)-hopt-l;
b=a*pi^2*g/4/9/16/Q^2/0.0396/(4*Q*rho_toluene/pi/viscosity_toluene)^-0.25;
d=(1/b)^(1/4.75);
disp(d , "minimum smooth diameter of suction pipe which will have flow rate as (1.8 dm^3/s) for pump kept at 9 m high (in m):");












