clc
// solution
//initialization of variables
// Please refer to fig of question 6.1 for quantities
effi1=0.323 //old efficiency
P2=2*1000 //higher pressure converted in in kPa
P1=4 // condenser pressure in kPa
rho=1000 // density of water in Kg/m^3
h1=192 // enthalpy at state 1 in kJ/kg
h3=3248 // enthalpy at state 3 in kJ/kg
s3=7.1279// entropy at state 3 in kJ/kg.K

s4=s3 // isentropic process 

sf=0.4225 // entropy of saturated liquid @10 kPa from steam table
sg=8.4754 // entropy of saturated vapour @10 kPa from steam table

x=(s4-sf)/(sg-sf)// from property of pure substance

hf=121 //enthalpy of saturated liquid @4 kPa from steam table
hg=2554 // enthalpy of saturated vapour @4 kPa from steam table
h4=hf+x*(hg-hf)// enthalpy @ state 4h1=h2 // isenthalpic process
h2=h1 // isenthalpic process
qb=h3-h2 // heat addition

wt=h3-h4 // turbine work

effi2=(wt)/qb // efficiency of power cycle
printf(" The Efficiency is %.3f or %.1f %% \n",effi2,effi2*100)
%increase=((effi2-effi1)/effi1)*100 
printf(" The %% increase in Efficiency is %.2f \n",%increase)
// the answer in the textbook is different due to approximations

