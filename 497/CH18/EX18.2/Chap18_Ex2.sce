//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-18, Example 2, Page 457
//Title: Kinetics of Carbon Burning
//==========================================================================================================

clear
clc

//INPUT
xA=0.08;//Fraction of oxygen in stream
dp=1;//Particle diameter in mm
rhos=2200;//Density of catalyst in kg/m^3
kc=0.2;//Reaction rate constant in m/s
mC=0.012;//Molecular weight of carbon in kg/mol
P=10^5;//Pressure in bar\
R=8.314;//Universal gas constant
T=900;//Temperature in degree C

//CALCULATION
b=1;//Stoichiometric coefficient of C in the reaction equation
CA=xA*P/(R*(T+273));//Concentration of Oxygen
rhob=rhos/mC;//Molar density of pure solid reactant
tou=rhob*10^-3/(2*b*kc*CA);//Time required for complete reaction in seconds

//OUTPUT
mprintf('\nThe time required for complete combustion:%fmins',tou/60);

//====================================END OF PROGRAM ======================================================










