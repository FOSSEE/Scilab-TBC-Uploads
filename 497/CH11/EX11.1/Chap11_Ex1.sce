//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-11, Example 1, Page 265
//Title: Fitting Reported Mass Transfer Data with the Bubbling Bed Model
//==========================================================================================================

clear
clc

//INPUT
db=0.37;//Equilibrium bubble size in cm
dp=0.028;//Particle size in cm
rhos=1.06;//Density of solids in g/cc
ephsilonmf=0.5;//Void fraction at minimum fluidization condition
phis=0.4;//Sphericity of solids
gammab=0.005;//Ratio of volume of dispersed solids to that of bubble phase
rhog=1.18E-3;//Density of air in g/cc
myu=1.8E-4;//Viscosity of gas in g/cm s
D=0.065;//Diffusion coefficient of gas in cm^2/s
Sc=2.35;//Schmidt number
etad=1;//Adsorption efficiency factor
y=1;
umf=1.21;//Velocity at minimum fluidization condition in cm/s
ut=69;//Terminal velocity in cm/s
g=980;//Acceleration due to gravity in square cm/s^2
uo=[10;20;30;40;50];//Superficial gas velocity in cm/s

//CALCULATION
n=length(uo);
i=1;
Rept=(dp*ut*rhog)/myu;
Shstar=2+(0.6*(Rept^0.5)*(Sc^(1/3)));//Sherwood no. from Eqn.(1)
Kbc=4.5*(umf/db)+5.85*((D^0.5*g^0.25)/db^(5/4));//Gas interchange coefficient between bubble and cloud from Eqn.(10.27)
ubr=0.711*(g*db)^0.5;//Rise velocity of the bubble
while i<=n
    x(i)=(uo(i)-umf)/(ubr*(1-ephsilonmf));//The term delta/(1-epshilonf) after simplification
    Shbed(i)=x(i)*[(gammab*Shstar*etad)+((phis*dp^2*y)/(6*D))*Kbc];//Sherwood no. from Eqn.(11)
    Rep(i)=(dp*uo(i)*rhog)/myu;//Reynolds of the particle
    i=i+1;
end

//OUTPUT
printf('\nThe desired result is the relationship between Shbed and Rep  The points gives a straight line of the form y=mx+c');
printf('\nRep');
printf('\t\tShbed');
i=1;
while i<=n
    printf('\n%f',Rep(i));
    printf('\t%f',Shbed(i));
    i=i+1;
end
plot(Rep,Shbed);
xlabel("Rep");
ylabel("Shbed");

//====================================END OF PROGRAM ======================================================