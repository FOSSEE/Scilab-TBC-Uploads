//exapple 2.6 
clc; funcprot(0);
// Initialization of Variables
pi = %pi;
rhol=931;
mu=1.55/10000;//viscosity of water
Vsp=0.6057;//specific volume
T=273+133;
mug=1.38/100000;//viscosity of steam
P=300*1000;
d=0.075;
Gg=0.05;//mass flow gas phase
Gl=1.5;//mass flow liquid phase
A=pi*d^2/4;
//calculation
rhog=1/Vsp;
rhog=round(rhog*1000)/1000;
velg=Gg/A/rhog;
velg=round(velg*100)/100;
Reg=rhog*velg*d/mug;
//using chart
phig=0.00245;//friction factor gas phase
l=1;
delPg=4*phig*velg^2*rhog/d;
//consider liquid phase
vell=Gl/A/rhol;
Rel=rhol*vell*d/mu;
if Rel>4000 &  Reg>4000 then
    disp("both liquid phase and solid phase in turbulent  motion");
    //from chart
end
PHIg=5;
delP=PHIg^2*delPg;
disp(delP,"required pressure drop per unit length in (Pa)")