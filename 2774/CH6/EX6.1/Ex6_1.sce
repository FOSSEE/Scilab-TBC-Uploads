clc
// solution
//initialization of variables
// Please refer to the given figure in question for quantities
P2=2*1000 //higher pressure converted in in kPa
P1=10 // lower pressure in kPa
rho=1000 // density of water in Kg/m^3
h1=192 // enthalpy at state 1 in kJ/kg
h3=3248 // enthalpy at state 3 in kJ/kg
s3=7.1279// entropy at state 3 in kJ/kg.K

//calculation of pump work
wp=(P2-P1)/rho // pump work given by equation 4.56 in textbook
h2=h1+wp // by enrgy balance b/w state 1 and 2
q=h3-h2 // Heat input from 2 to 3

s4=s3 // isentropic process
sf=0.6491 // entropy of saturated liquid @10 kPa from steam table
sg=8.151 // entropy of saturated vapour @10 kPa from steam table
x=(s4-sf)/(sg-sf)// from property of pure substance
hf=191.8 //enthalpy of saturated liquid @10 kPa from steam table
hg=2584 // enthalpy of saturated vapour @10 kPa from steam table
h4=hf+x*(hg-hf)// enthalpy @ state 4

wt=h3-h4 // turbine work

efficiency=(wt-wp)/q // efficiency of power cycle
printf(" The Efficiency is %.3f or %.1f %% \n",efficiency,efficiency*100)
// the answer is correct within limits
