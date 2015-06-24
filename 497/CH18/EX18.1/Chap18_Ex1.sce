//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-18, Example 1, Page 456
//Title: Kinetics of Zinc Blende Roasting
//==========================================================================================================

clear
clc

//INPUT
xA=0.08;//Fraction of oxygen in stream
dp=[2;0.1];//Particle diameter in mm
rhos=4130;//Density of catalyst in kg/m^3
Ds=8E-6;//Diffusion coefficient of solid in m^2/s
kc=0.02;//Reaction rate constant in m/s
P=10^5;//Pressure in bar\
R=8.314;//Universal gas constant
T=900;//Temperature in degree C
mB=0.09745;//Molecular weight of ZnS in kg/mol

//CALCULATION
b=2/3;//Stoichiometric coefficient of ZnS in the reaction equation
CA=xA*P/(R*(T+273));//Concentration of Oxygen
rhob=rhos/mB;//Molar density of pure solid
n=length(dp);
i=1;
while i<=n
    kbar(i)=(kc^-1+(dp(i)*10^-3/(12*Ds)))^-1;//Average reaction rate constant from Eqn.(11)
    tou(i)=rhob*dp(i)*10^-3/(2*b*kbar(i)*CA);//Time for complete reaction in seconds from Eqn.(9)
    i=i+1;
end

//OUTPUT
printf('\nParticle Size(mm)\tAverage rate constant(m/s)\tTime for complete reaction(min)');
i=1;
while i<=n
    mprintf('\n%f\t\t%f\t\t\t%f',dp(i),kbar(i),tou(i)/60);
    i=i+1;
end

//====================================END OF PROGRAM ======================================================