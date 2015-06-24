

//exapple 8.3 
clc; funcprot(0);
// Initialization of Variable
a=16/1000;//dV/dt
J=0.0876;//mass fraction
rho=999;//density of water
rhoc=3470;//density of slurry
mu=1.12/1000;
rhos=1922;//density of dry filter cake
t1=3*60;
t2=8*60;
V1=33.8/1000;//volume at t1
V2=33.8/1000+23.25/1000;//volume at t2
P=12*1000;//pressure difference
Ap=70^2/10000*2*9;
As=650/10000;
//calculation
b=[t1;t2]
A=[V1^2/2/P V1/P;V2^2/2/P V2/P];
x=A\b;
K1p=x(1,1)*As^2/Ap^2;
K2p=x(2,1)*As/Ap;
P2=15*1000;//final pressure drop
t=(P2-K2p*a)/K1p/a^2;//time for filterate
V=a*t;//volume of filterate
e=1-rhos/rhoc;
nu=J*rho/((1-J)*(1-e)*rhoc-J*e*rho);
l=(11-1)/200;
Vf=Ap*l/nu;
tf=t+K1p/2/P2*(Vf^2-V^2)+K2p/P2*(Vf-V);
r=K1p/mu/nu*Ap^2;
L=K2p*Ap/r/mu;
disp(L,"the thickness of filter which has resistance equal to resistance of filter medium in (m):")

