clc;

printf("\n Example 4.3\n");

Q=50; //volumetric flow rate of methane
P=101.3e3;//Given Pressure
T1=288;//Given Temperature
d=0.6;//Diameter of pipeline
l=3e3;//length of the pipe line
R_R=0.0001;//Relative roughness
P2=170e3;//Pressure at which methane is to be discharged
T2=297;//Temperature at which methane leaves the compressor
M=16;//molecular mass of methane
R=8314;//Gas constant
Meu=1e-5;//Viscosity of methane at 293 K

T=(T1+T2)/2;//Mean temperature
P1_v1=R*T/(M);
//At 288 K and 101.3 kN/m^2
v=P1_v1/P*T1/T;
G=Q/v;//Mass flow rate of methane
A=%pi/4*d^2;//cross sectional area of pipeline
G_A=G/A;
Re=G_A*d/Meu;
//Y=R/(rho*u^2) = 0.0015
Y=0.0015;//(from fig 3.7)
//The upstream pressure is calculated using equation 4.55:
function[y]=pressure(P1)
    y=G_A^(2)*log(P1/P2)+(P2^2-P1^2)/(2*1.5525e5)+4*Y*(l/d)*G_A^2;
    funcprot(0);
endfunction
P1 = 1e5;
z = fsolve(P1,pressure);
printf("\n Pressure to be developed at the compressor in order to achieve this flowrate = %.2f * 10^5 N/m^2",z*1e-5);













