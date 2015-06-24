clc
// solution
//initialization of variables
// Please refer to the given figure of question 6.1 for quantities
effi1=0.323 //old efficiency
P2=4*1000 //higher pressure converted in in kPa
P1=10 // lower pressure in kPa
rho=1000 // density of water in Kg/m^3
h1=192 // enthalpy at state 1 in kJ/kg
h3=3214 // enthalpy at state 3 i.e @400 degree celsius and 4MPa in kJ/kg
s3=6.769// entropy at state 3 i.e @400 degree celsius and 4MPa in kJ/kg.K

s4=s3 // insentropic process
sf=0.6491 // entropy of saturated liquid @10 kPa from steam table
sg=8.151 // entropy of saturated vapour @10 kPa from steam table

x=(s4-sf)/(sg-sf)// quality of steam

hf=192 //enthalpy of saturated liquid @10 kPa from steam table
hg=2584 // enthalpy of saturated vapour @10 kPa from steam table
h4=hf+x*(hg-hf)// enthalpy @ state 4
h2=h1 // isenthalpic process
qb=h3-h2 // heat addition

wt=h3-h4 // turbine work

effi2=(wt)/qb // efficiency of power cycle
printf(" The Efficiency is %.3f or %.1f %% \n",effi2,effi2*100)
%increase=((effi2-effi1)/effi1)*100 
printf(" The %% increase in Efficiency is %.2f \n",%increase)

