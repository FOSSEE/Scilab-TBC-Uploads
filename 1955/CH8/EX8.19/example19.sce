clc
clear
//input data
H=36//Initial total head of the pump in m
Q1=0.05//Initial discharge of the pump in m^3/s
H2=3.5//Sum of static pressure and velocity head at inlet in m
P01=0.75//Atmospheric pressure initially in m of Hg
Pvap1=1.8*10^3//Vapour pressure of water initially in Pa
Pvap2=830//Vapour pressure of water finanlly in Pa
P02=0.62//Atmospheric pressure finally in m of Hg
g=9.81//Acceleration due to gravity in m/s^2
dW=1000//Density of water in kg/m^3
dHg=13.6//Density of mercury in kg/m^3

//calculations
NPSH=H2-((Pvap1)/(dW*g))//Net positive suction head in m
s=NPSH/H//Cavitation parameter when pump dvelops same total head and discharge 
dH1=(P01*dHg)-(s*H)-(Pvap1/(dW*g))//The height reduced in initial condition above supply in m
dH2=(P02*dHg)-(s*H)-(Pvap2/(dW*g))//The height reduced in final condition above supply in m
Z=dH1-dH2//The total height which the pump must be lowered at new location in m

//output
printf('(a)The cavitation parameter is %3.4f\n(b)\n    The height reduced in initial condition above supply is %3.1f m\n    The height reduced in final condition above supply is %3.2f m\n    The total height which the pump must be lowered at new location is %3.2f m',s,dH1,dH2,Z)
