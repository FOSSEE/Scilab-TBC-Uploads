clc
clear
// solution
//initialization of variables
P2=2*1000 //higher pressure converted in in kPa
P1=10 // lower pressure in kPa
h1=192 // enthalpy at 10 kPa  in kJ/kg
h3=3248 // enthalpy @ state 3 in kJ/kg from table C.3
s3=7.128 // entropy @ state 3 in kJ/kg.K from table C.3
s4=s3 // isentropic process

h2=h1 //isenthalpic process
h4=((s4-7.038)/(7.233-7.038))*(3056-2950)+2950 //using adjacent values for 
//interpolation from table C.3 
h5=3267 // enthalpy at 800 kPa and $00 degree celsius
s5=7.572 // entropy at 800 kPa and $00 degree celsius

s6=s5 // isentropic process
sf=0.6491//  entropy of saturated liquid @10 kPa from steam table
sg=8.151 // entropy of saturated vapour @10 kPa from steam table

x=(s6-sf)/(sg-sf)// quality of steam

hf=192 //enthalpy of saturated liquid @10 kPa from steam table
hg=2585 // enthalpy of saturated vapour @10 kPa from steam table

h6=hf+x*(hg-hf)// enthalpy @ state 6

// we now calculate energy input
qb=(h5-h4)+(h3-h2)// heat interaction

// we now calculate work output
wt=(h5-h6)+(h3-h4)// turbine work

eff=(wt)/qb // efficiency of power cycle
printf(" The Efficiency is %.4f9 or %.2f %% \n",eff,eff*100)



