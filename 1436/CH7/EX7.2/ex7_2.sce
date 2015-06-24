//Example 7.2, page no-437
clear
clc
//(a)
v=10
F=1/v
printf("(a)\nFluidity = %.1f rhe",F)

//(b)
mu=10
rho=0.8
ve=mu/rho
printf("\n(b)\nKinematic viscosity (v)= %.1f cm^2/sec",ve)
//(c)
ab=1000
abwt=1.002
rv=ab/abwt
printf("\n(c)\nRelative viscosity = %d centipoises",rv)
//(d)
PAS=10
printf("\n(c)\nAbsolute viscosity = 1000 centipoises =10 poises = 1PAS")
