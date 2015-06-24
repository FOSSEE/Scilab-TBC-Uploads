clc
clear
//solution
// initialization of variables

//REFER TO FIG.:7.8

Cp=1 // specific constant at constant pressure
k=1.4 // polytropic constant for air
T5=25+273 // temperature at state 5 in kelvin
T7=850+273 // temperature at state 4 in kelvin
T9=350 // exit temperature of water from bolier in kelvin
WdotST=100000 // power from steam turbine in Watt
r=5 // pressure ratio=P2/P1 & P4/P3

h1=192 // specific enthalpy at 10 Kpa from steam table
h2=h1 // isenthalpic process
h3=3214 // specific enthalpy at 4 Mpa and 400 degree celsius from steam table
s3=6.769 // specific entropy at 4 Mpa and 400 degree celsius from steam table

s4=s3 // isentropic process
sf=0.6491 // specific entropy of saturated liquid at 10 kPa and 45 degree celsiusfrom table C.2
sg=8.1510 // specific entropy of saturated liquid at 10 kPa and 45 degree celsiusfrom table C.2
x4=(s4-sf)/(sg-sf) // quality of steam

hf=h1 // specific enthalpy of saturated liquid @ 10 Kpa  
hg=2584.6
h4=hf+x4*(hg-hf) // specific entropy at state 4

mdots=WdotST/(h3-h4) // steam mass flow rate from turbine output

T6=T5*(r^((k-1)/k)) // adiabatic process relation
T8=T7*(1/r^((k-1)/k)) // adiabatic process relation

// Now using energy balance in boiler
mdota=mdots*(h3-h2)/(Cp*(T8-T9)) // mass flow rate of water
Wdotturb=mdota*Cp*(T7-T8) //  power produced by turbine

Wdotcomp=mdota*Cp*(T6-T5) // energy needed by compressor

WdotGT=Wdotturb-Wdotcomp // net turbine work

Qdotin=mdota*Cp*(T7-T6) // energy input by combustor

effi=100*(WdotST+WdotGT)/Qdotin // combined efficiency

printf("The thermal efficiency of the combined cycle is %0.1f %% ",effi)









