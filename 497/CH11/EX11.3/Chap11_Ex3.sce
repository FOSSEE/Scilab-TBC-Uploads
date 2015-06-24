//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-11, Example 3, Page 273
//Title: Fitting Reported Heat Transfer Data with the Bubbling Bed Model
//==========================================================================================================

clear
clc

//INPUT
rhos=1.3;//Density of solids in g/cc
phis=0.806;//Sphericity of solids
gammab=0.001;//Ratio of volume of dispersed solids to that of bubble phase
rhog=1.18E-3;//Density of air in g/cc
Pr=0.69;//Prandtl number
myu=1.8E-4;//Viscosity of gas in g/cm s
Cpg=1.00;//Specific heat capacity of gas in J/g K
ephsilonmf=0.45;//Void fraction at minimum fluidization condition
kg=2.61E-4;//Thermal concuctivity of gas in W/cm k
dp=0.036;//Particle size in cm
umf=6.5;//Velocity at minimum fluidization condition in cm/s
ut=150;//Terminal velocity in cm/s
db=0.4;//Equilibrium bubble size in cm
etah=1;//Efficiency of heat transfer
uo=[10;20;30;40;50];//Superficial gas velocity in cm/s
g=980;//Acceleration due to gravity in square cm/s^2

//CALCULATION
Nustar=2+[((dp*ut*rhog)/myu)^0.5*Pr^(1/3)];//Nusselt no. from Eqn.(25)
Hbc=4.5*(umf*rhog*Cpg/db)+5.85*((kg*rhog*Cpg)^0.5*g^0.25/db^(5/4));//Total heat interchange across the bubble-cloud boundary from Eqn.(32)
ubr=0.711*(g*db)^0.5;//Rise velocity of the bubble from Eqn.(6.7)
n=length(uo);
i=1;
while i<=n
    x(i)=(uo(i)-umf)/(ubr*(1-ephsilonmf));//The term delta/(1-epshilonf) after simplification
    Nubed(i)=x(i)*[gammab*Nustar*etah+(phis*dp^2/(6*kg))*Hbc];//Nusselt no. from Eqn.(36)
    Rep(i)=(dp*uo(i)*rhog)/myu;//Reynolds of the particle
    i=i+1;
end

//OUTPUT
printf('\nThe desired result is the relationship between Nubed and Rep which is in the form of a straight line y=mx+c');
printf('\nRep');
printf('\t\tNubed');
i=1;
while i<=n
    printf('\n%f',Rep(i));
    printf('\t%f',Nubed(i));
    i=i+1;
end
plot(Rep,Nubed);
xlabel("Rep");
ylabel("Nubed");
 
//====================================END OF PROGRAM ======================================================