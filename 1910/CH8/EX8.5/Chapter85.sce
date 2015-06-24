// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 8, Example 5")
//A square plate of length(L)=0.5m by breadth,B=0.5m in a room at temprature,Tinf=30°C
//One side of plate is kept a uniform temprature(Tw)=74°C
Tw=74;
L=0.5;
B=0.5;
Tinf=30;
//The required properties at the film temprature(Tf)=52°C are kinematic viscosity(nu=1.815*10^-5),Prandtl number(Pr=0.71),conductivity(k=0.028W/(m*°C))
Tf=52;
Pr=0.71;
nu=1.815*10^-5;
k=0.028;
//Area(A)=L*B m^2
A=L*B;
//Volume expansion coefficient is Beta
Beta=1/(273+Tf);
//g is acceleration due to gravity =9.81m/s^2
g=9.81;
//Grashoff number is given by GrL=(g*beta*(Tw-Tinf)*L^3)/(nu)^2
disp("Grashoff number is")
GrL=(g*Beta*(Tw-Tinf)*L^3)/(nu)^2 
//Rayleigh number is defined as RaL1=GrL*Pr
disp("Rayleigh number is")
RaL1=GrL*Pr
disp("Therefore the flow is laminar")
//We make use of following equation to find Nusselt number,NuL1=(4/3)*[0.508*Pr^(-1/2)*(0.952+Pr)^(-1/4)*Gr^(1/4)]
disp("Nusselt number is")
NuL1=(4/3)*[0.508*Pr^(1/2)*(0.952+Pr)^(-1/4)*GrL^(1/4)]
//Average heat transfer coefficient(hbarL) is given by (NuL*k)/L
disp("Average heat transfer coefficient(hbarL)in W/(m^2*°C)")
hbarL=(NuL1*k)/L
//The rate of heat transfer(Q) from the plate by free convection is given by Q=hbarL*A*(Tw-Tinf)
disp("The rate of heat transfer in W is ")
Q=hbarL*A*(Tw-Tinf)
disp("Now if we use NuL2=0.59*RaL^(1/4) with the value of C=0.59,n=(1/4)")
disp("Nusselt number is")
NuL2=0.59*RaL1^(1/4)
//Average heat transfer coefficient(hbarL) is given by (NuL*k)/L
disp("Average heat transfer coefficient(hbarL)in W/(m^2*°C)")
hbarL=(NuL2*k)/L
//The rate of heat transfer(Q) from the plate by free convection is given by Q=hbarL*A*(Tw-Tinf)
disp("The rate of heat transfer in W is ")
Q=hbarL*A*(Tw-Tinf)
disp("(b)For the horizontal plate facing up")
//Perimeter(P) for a square plate is P=4*L
P=4*L;
//Characterstic length(Lc)=A/P
Lc=A/P
disp("Now RaL2=Gr*Pr*(Lc/L)^3")
disp("Rayleigh number is")
RaL2=GrL*Pr*(Lc/L)^3
//The values of constants,C=0.54 and n=(1/4)
C=0.54;
n=(1/4);
disp("Nusselt number is given by NuL3=C*(GrL*Pr)^n")
NuL3=C*(RaL2)^n
disp("Average heat transfer coefficient(hbarL)in W/(m^2*°C)")
hbarL=(NuL3*k)/Lc
disp("The rate of heat transfer in W is ")
Q=hbarL*A*(Tw-Tinf)
disp("(c)When the hot surface faces is down")
disp("Nusselt number is given by NuL4=0.27*RaL2^(1/4)")
NuL4=0.27*RaL2^(1/4)
disp("Average heat transfer coefficient(hbarL) in W/(m^2)")
hbarL=(NuL4*k)/Lc
disp("The rate of heat transfer in W is ")
Q=hbarL*A*(Tw-Tinf)












































