clear;
clc;
funcprot(0);

//given data
T02 = 1200;//in K
p01 = 4.0;//in bar
dt = 0.75;//tip diameter in m
hb = 0.12;//blade height in m
v = 10500;//shaft speed in rev/min
R = 0.5;//degree of reaction at mean radius
phi = 0.7;//flow coefficient
psi = 2.5;//stage loading coefficient
eff_noz = 0.96;//Nozzle efficiency
Cp = 1160;//in kJ/(kgC)
gamma = 1.33;
Rg = 287.8;//specific gas constant
A2 = 0.2375;//in m^2
K = 2/3;//stress taper factor
rho = 8000;//in kg/m^3

//calculations
beta3 = (180/%pi)*atan((0.5*psi + R)/phi);
beta2 = (180/%pi)*atan((0.5*psi - R)/phi);
alpha2 = beta3;
alpha3 = beta2;
rm = (dt-hb)/2;
Um = (v/30)*%pi*rm;
cx = phi*Um;
c2 = cx/(cos(alpha2*%pi/180));
T2 = T02 - 0.5*(c2^2)/Cp;
p2 = p01*((1-((1-(T2/T02))/eff_noz))^(gamma/(gamma-1)));
mdot = ((p2*10^5)/(Rg*T2))*A2*cx;
Ut = (v/30)*%pi*0.5*dt; 
sig_rho = K*0.5*(Ut^2)*(1-((dt-2*hb)/dt)^2);
sig = rho*sig_rho;
Tb = T2 + 0.85*((cx/cos(beta2*%pi/180))^2)/(2*Cp);

//Results
printf('(i)The relative and absolute angles for the flow: \n beta3 = %.1f deg, and beta2 = %.2f deg.',beta3,beta2);
printf('\n alpha2 = %.1f deg, and alpha3 = %.2f deg.',alpha2,alpha3);
printf('\n (ii) The velocity at nozzle exit = %.2f m/s',c2);
printf('\n (iii)The static temperature and pressure at nozzle exit assuming a nozzle efficiency of %.2f: \n T2 = %.1f K\n p2 = %.3f bar',eff_noz,T2,p2);
printf('\n and mass flow = %.1f kg/s',mdot);
printf('\n (iv)The rotor blade root stress assuming the blade is tapered with a stress taper factor K of 2/3 and \n the blade material density is %d kg/m2 = %.1f MPa',rho,sig/(10^6));
printf('\n (v) The approximate average mean blade temperature is Tb = %.1f K',Tb);
printf('\n (vi)Inspection of the data for Inconel 713 cast alloy suggests that it might be a better choice \n of blade material as the temperature–stress point of the above calculation is to the \n left of the line marked creep strain of 0.2 percentage in 1000 hr.')


//there are very small errors in the answers given in textbook
