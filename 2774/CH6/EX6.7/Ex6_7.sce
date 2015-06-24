clc
// solution
//initialization of variables
P2=2*1000 //higher pressure converted in  kPa
P1=10 // lower pressure in kPa
h1=192 // enthalpy at 10 kPa  in kJ/kg
h3=3248 // enthalpy @ state 3 in kJ/kg from table C.3
s3=7.128 // entropy @ state 3 in kJ/kg.K from table C.3

s4=s3 // isentropic process

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
h7=721 // enthalpy of saturated liquid @800 kPa from steam table
h8=h7 // isenthalpic process
h2=h1 // isenthalpic process

m8=1 // let mass of steam =1 Kg
m4=(h8-h2)*(m8)/(h4-h2)
m2=m8-m4 // conservation of mass

wt=h3-h4+(h5-h6)*m2 // work done by turbine
qb=h3-h8+(h5-h4)*m2 // heat given to bolier

effi=(wt)/qb // efficiency of power cycle
printf(" The Efficiency is %.3f or %.1f %% \n",effi,effi*100)


