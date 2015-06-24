

//exapple 1.6 
clc; funcprot(0);
// Initialization of Variable
rhon=1068;//density of nitric acid
mun=1.06/1000//viscosity of nitric acid
g=9.81;
l=278;
d=0.032;
alpha=1;
h2=57.4;//height to be raised
h1=5;//height from which to be raised
e=.0035/1000;//roughness
G=2.35//mass flow rate
//calculations
//part 1
u=4*G/rhon/pi/d^2;
Re=rhon*d*u/mun;
rr=e/d;//relative roughness
//Reading's from Moody's Chart
phi=.00225;//friction coeff.
W=u^2/2+g*(h2-h1)+4*phi*l*u^2/d;//The work done/kg of fluid flow in J/kg
V=abs(W)*G;
disp(abs(V)/1000,  "The Power required to pump acid in kW  :");
//part 2
P2=-u^2*rhon/2+g*(h1)*rhon+abs(W+2)*rhon;;
disp(P2/1000,"The gauge pressure at pump outlet when piping is new in (kPa)" );
//part 3
e=.05/1000;
Re=rhon*d*u/mun;
rr=e/d;
//Reading's from Moody's Chart
phi=0.0029;
W=u^2/2+g*(h2-h1)+4*phi*l*u^2/d;
Vnew=abs(W)*G;
Pi=(Vnew-V)/V*100;
disp(Pi , "The increase in power required to transfer in old pipe in (%):");
//part 4
P2=-u^2*rhon/2+g*(h1)*rhon+abs(W+2)*rhon;
disp(P2/1000,"The gauge pressure at pump outlet when piping is old in (kPa)" );
