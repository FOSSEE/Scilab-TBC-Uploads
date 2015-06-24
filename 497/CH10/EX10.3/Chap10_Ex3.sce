//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-10, Example 3, Page 255
//Title: Compare Interchange Rates for Adsorbed and Nonadsorbed Gases
//==========================================================================================================

clear
clc

//INPUT
Kbe=[0.028;0.05];//Reported range for gas interchange coefficient between bubble and emulsion
uo=0.30;//Superficial gas velocity in m/s
db=0.13;//Equilibrium bubble size in m
m=7;
ephsilonmf=0.5;//Void fraction at minimum fluidization condition
umf=0.0018;//Velocity at minimum fluidization condition in m/s
D=[9E-6;22E-6];//Diffusion coefficient of gas in m^2/s
g=9.81;//Acceleration due to gravity in m/s^2

//CALCULATION
n=length(Kbe);
i=1;
while i<=n
    Kbem(i)=(6/db)*Kbe(i);//Gas interchange coefficient between bubble and emulsion from Eqn.(19)
    Kbc(i)=4.5*(umf/db)+5.85*((D(i)^0.5*g^0.25)/db^(5/4));//Gas interchange coefficient between bubble and cloud from Eqn.(27)
    Kce(i)=6.77*((D(i)*ephsilonmf*0.711*(g*db)^0.5)/db^3)^0.5;//Gas interchange coefficient between emulsion and cloud from Eqn.(34)
    Kbe(i)=(Kbc(i)*Kce(i))/(Kbc(i)+Kce(i));//Gas interchange coefficient between bubble and emulsion from Eqn.(14)
    c(i)=(Kbem(i)/Kbe(i));
    i=i+1;
end

//OUTPUT
printf('\nKbe from Eqn.(19)');
printf('\tKbc from Eqn.(27)');
printf('\tKce from Eqn.(34)');
printf('\tKbe from Eqn.(14)');
printf('\tComparison of Kbe from Eqn.(19) and that from Eqn.(14)');
i=1;
while i<=n
    mprintf('\n%f',Kbem(i));
    mprintf('\t\t%f',Kbc(i));
    mprintf('\t\t%f',Kce(i));
    mprintf('\t\t%f',Kbe(i));
    mprintf('\t\t%f',c(i));
    i=i+1;   
end

//====================================END OF PROGRAM ======================================================