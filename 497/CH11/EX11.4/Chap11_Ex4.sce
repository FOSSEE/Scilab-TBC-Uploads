//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-11, Example 4, Page 274
//Title: Heating a Particle in a Fluidized Bed
//==========================================================================================================

clear
clc

//INPUT
rhog=1.2;//Density of air in kg/m^3
myu=1.8E-5;//Viscosity of gas in kg/m s
kg=2.6E-2;//Thermal concuctivity of gas in W/m k
dp=1E-4;//Particle size in m
rhos=8920;//Density of solids in kg/m^3
Cps=390;//Specific heat capacity of the solid in J/kg K
ephsilonf=0.5;//Void fraction of the fluidized bed
umf=0.1;//Velocity at minimum fluidization condition in m/s
uo=0.1;//Superficial gas velocity in m/s
pi=3.14

//CALCULATION
to=0;//Initial temperature of the bed
T=100;//Temperature of the bed
t=0.99*T;//Particle temperature i.e. when it approaches 1% of the bed temperature
mp=(pi/6)*dp^3*rhos;//Mass of the particle
A=pi*dp^2;//Surface area of the particle
Rep=(dp*uo*rhog)/myu;//Reynold's no. of the particle
Nubed=0.0178;//Nusselt no. from Fig.(6)
hbed1=(Nubed*kg)/dp;//Heat transfer coefficient of the bed
t1=(mp*Cps/(hbed1*A))*log((T-to)/(T-t));//Time needed for the particle approach 1 percentage of the bed temperature in case(a)
hbed2=140*hbed1;//Since from Fig.(6) Nup is 140 times Nubed
t2=(mp*Cps/(hbed2*A))*log((T-to)/(T-t));//Time needed for the particle approach 1 percentage of the bed temperature in case(b)

//OUTPUT
printf('\nCase(a):Using the whole bed coefficient from Fig.(6)');
mprintf('\n\tTime needed for the particle approach 1 percentage of the bed temperature is %fs',t1);
printf('\nCase(b):Uisng the single-particle coefficient of Eqn.(25),also shown in Fig.(6)');
mprintf('\n\tTime needed for the particle approach 1 percentage of the bed temperature is %fs',t2);

//====================================END OF PROGRAM ======================================================