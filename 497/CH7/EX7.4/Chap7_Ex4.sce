//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-7, Example 4, Page 181
//Title: k* from Steady State Experiments
//==========================================================================================================
clear
clc

//INPUT
dp=[40;60;80;100;120];//Diameter of particle in micrometer
uo=0.381;//Superficial gas velocity in m/s

//CALCULATION
Gs=0.9;//Rate of entrainment in kg/m^2 s from Fig.3(a)
pb=(1/100)*[0.45;1.00;1.25;1.00;0.60];//Size distribution for bed particles from Fig.3(b)
pe=(1/100)*[1.20;2.00;1.25;0.45;0.10];//Size distribution for entrained particles from Fig.3(b)
n=length(dp);
i=1;
while i<=n
    ki(i)=(Gs*pe(i))/pb(i);//Calculation of ki* using Eqn.(13)
    i=i+1;
end

//OUTPUT
printf('\ndpi(micrometer)');
printf('\t100pb(dpi)(micrometer^-1)');
printf('\t100pe(dpi)(micrometer^-1)');
printf('\tki*(kg/m^2 s)');
j=1;
while j<=n
    mprintf('\n%f',dp(j));
    mprintf('\t%f',100*pb(j));
    mprintf('\t\t\t%f',100*pe(j));
    mprintf('\t\t\t%f',ki(j));    
    j=j+1;
end

//====================================END OF PROGRAM ======================================================