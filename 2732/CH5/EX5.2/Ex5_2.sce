clc
//initialization of variables
clear
A=1 //unit area
E=2*10^6 //kg/cm^2
// calculations
db=3000*90/(A*E)
dc=db+5000*60/(A*E)
dd=dc+4000*30/(A*E)
//results
printf('The extension of the rod in part AB is %.2e cm in part BC is %.2e cm \n and in part CD is %.2e cm',db,dc,dd)
