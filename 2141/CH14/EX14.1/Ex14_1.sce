
clc
//initialisation of variables
p=20 //lbf/in^2
v=600 //ft/sec
T0=570//R
T=540 //R
P0=p*1.210 //lbf/in^2
h=129.06
Pr=1.3860
pr0=1.6748
h0=h+((v)^2)/(64.34*778)
//CALCULATIONS
Po=p*(pr0/Pr)//lbf/in^2
//RESULTS
printf('The isentropic stagnation pressure and temperature=% f lbf/in^2',Po) 
