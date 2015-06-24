//Exa 5.1
clc;
clear;
close;
//given data
format('v',9)
rho=1.14;// in kg/m^3
k=2.73*10^-2;// in W/mK
Cp=1.005;// in kg/kgK
v= 16*10^-6;// in m^2/s
Pr=0.67;
// Other data given in the problem are
V=2;// in m/s
w=20*10^-2;// in m
t_infinite= 10;// in degree C
t_s=65;// in degree C
x=0.25;// in m from leading edge
// Re= rho*Vx/miu = V*x/v
Re= V*x/v;
//Since Re<5*10^5 , hence the flow is a laminar flow
//(a) Boundary layer thickness
delta= 5*x/(sqrt(Re));// in m
delta=delta*10^2;// in cm
disp(delta,"Boundary layer thickness in cm")

//(b) Thermal boundary layer thickness
delta_t= delta/Pr^(1/3);// in cm
disp(delta_t,"Thermal boundary layer thickness in ch")

//(c) Local friction coefficient
Cfx= 0.664/sqrt(Re);
disp(Cfx,"Local friction coefficient");
Cf=2*Cfx;
disp(Cf,"Average friction coefficient");

//(d) Total drag force
A=.25*.2;// in m^2
toh_o=Cf*(rho*V^2/2);
F=toh_o*A;
disp(F,"Total drag force in N");

//(e) 
// Formula Nux= hx*x/k = 0.332*Re^(1/2)*Pr^(1/3)
hx= 0.332*k/x*Re^(1/2)*Pr^(1/3);// in W/m^2K
disp(hx,"Local heat transfer coefficient in W/m^2K")
h=2*hx;
disp(h,"Average heat transfer coefficient in W/m^2K")
//(f)
q=h*A*(t_s-t_infinite);
disp(q,"Rate of heat transfer in W/m^2K");

//Note: In the book, they calculated wrong value of Re so all the answer in the book is wrong














