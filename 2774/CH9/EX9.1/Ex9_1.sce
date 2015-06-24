clc
clear
// initialization of variables

AFactual=20 // air fuel ratio actual
// The energy balance is done from equation

// C4H10 + 6.5(O2+3.76N2)-----> 4CO2 + 5H2O + 24.44N2

P=100 // atmospheic preesure in kPa
mair=6.5*(1+3.76)*29 // mass of air
mfuel=1*58 // mass of fuel
AFth=mair/mfuel // theoritical air-fuel ratio
%excessair=(AFactual-AFth)*100/AFth

printf("The %% excess air is %0.2f %% \n",%excessair)

// NOW THE REACTION IS
// C4H10+ (1+%excessair/100)*6.5*(O2+3.76N2) -----> 4CO2 + 5H2O + 1.903O2 + 31.6N2

%CO2=4/42.5*100 // VOLUME % OF CO2

printf("The volume %% of CO2 is %0.2f %% \n",%CO2)

// NOW WE FIND DEW POINT
Nv=5 // moles of water
N=42.5 // moles of air
Pv=P*(Nv/N) // partial pressure of vapour
Tdp=49// dew point temperature in degree celsius from table C.2

printf("The Dew point temperature is %i degree celsius",Tdp)



