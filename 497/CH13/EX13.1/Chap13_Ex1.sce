//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-13, Example 1, Page 331
//Title: h on a Horizontal Tube Bank
//==========================================================================================================

clear
clc

//INPUT
dp=57;//Particle size in micrometer
rhos=940;//Density of solids in kg/m^3
Cps=828;//Specific heat capacity of the solid in J/kg K
ks=0.20;//Thermal conductivity of solids in W/m k
kg=0.035;//Thermal concuctivity of gas in W/m k
umf=0.006;//Velocity at minimum fluidization condition in m/s
ephsilonmf=0.476;//Void fraction at minimum fluidization condition
do1=0.0254;//Outside diameter of tube in m
L=1;
uo=[0.05;0.1;0.2;0.35];//Superficial gas velocity in m/s
nw=[2;3.1;3.4;3.5];//Bubble frequency in s^-1
g=9.81;//Acceleration due to gravity in square m/s^2


//CALCULATION
dte=4*do1*L/2*L;//Hydraulic diameter from Eqn.(6.13)
db=(1+1.5)*0.5*dte;//Rise velocity of the bubble
ubr=0.711*(g*db)^0.5;//Rise velocity of bubble from Eqn.(6.7)
phib=0.19;//From Fig.(15) for ks/kg=5.7
ke=ephsilonmf*kg+(1-ephsilonmf)*ks*[1/((phib*(ks/kg))+(2/3))];//Effective thermal conductivity of bed from Eqn.(3) 
n=length(uo);
i=1;
while i<=n
    ub(i)=uo(i)-umf+ubr;//Velocity of bubbles in bubbling beds in Eqn.(6.8)
    delta(i)=uo(i)/ub(i);//Fraction of bed in bubbles from Eqn.(6.29)
    h(i)=1.13*[ke*rhos*(1-ephsilonmf)*Cps*nw(i)*(1-delta(i))]^0.5;//Heat transfer coefficinet from Eqn.(18)
    i=i+1;
end    

//OUTPUT
printf('\nSuperficial gas velocity(m/s)');
printf('\tHeat transfer coefficient(W/m^2 k)');
i=1;
while i<=n
    mprintf('\n%f',uo(i));
    mprintf('\t\t\t%f',h(i));
    i=i+1;
end

//====================================END OF PROGRAM ======================================================