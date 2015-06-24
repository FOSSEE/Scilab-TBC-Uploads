clc
clear
// solution
// initialization of variables
// Please refer to fig of question 6.1 for quantities
effi1=0.357//efficiency from example 6.3
P2=2*1000 //higher pressure converted in in kPa
P1=10 // lower pressure in kPa
rho=1000 // density of water in Kg/m^3
T2=600// max temperature of cycle in degree celsius
h1=192 // enthalpy at state 1 in kJ/kg
h3=3690 // enthalpy at state 3 in kJ/kg, 600*C and 2MPa pressure
h4=2442 // enthalpy from example 6.3
h6=505 // specific enthalpy @ 200 kPa from steam table
h7=h6 // isenthalpic process
s3=7.702// entropy at state 3 in kJ/kg.K, 600*C and 2MPa pressure

h2=h1 // isenthalpic process
s5=s3 // isentropic process
h5=(s3-7.509)*(2971-2870)/(7.709-7.509)+2870 // interpolationg from steam table 2 200 kPa using s5=s3= 7.702 kJ/kg.

m6=1 // let mass of steam =1 Kg
m5=(h6-h2)*(m6)/(h5-h2) 
m2=m6-m5 // conservation of mass

wt=h3-h5+(h5-h4)*m2 // work done by turbine
qb=h3-h7 // heat given to bolier
effi2=(wt)/qb // efficiency of power cycle
printf(" The Efficiency is %.3f or %.1f %% \n",effi2,effi2*100)
%increase=((effi2-effi1)/effi1)*100 
printf(" The %% increase in Efficiency is %.2f \n",%increase) 
// The anwer is different in textbook as there the intermediate values are approximated while in scilab the calculations are precise 
