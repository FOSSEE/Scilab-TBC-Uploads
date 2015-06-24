clc();
clear;
//Given :
ni = 1.5*10^16; // ni for Si in m^-3
mue = 0.135; // mobility of free electrons in m^2/Vs
muh = 0.048; // mobility of holes in m^2/Vs
Nd = 10^21; // phosphorus atoms/m^3
e = 1.6*10^-19;// charge of an electron in C
//(a) 
n = Nd; // electrons/m^3
//(b)
p = ni^2/Nd; // holes/m^3
//(c)
sigma = e*(n*mue + p*muh); // conductivity in mho m^-1
rho = 1/sigma; // resistivity in ohm m

printf("Major carrier concentration  = %.1f x 10^21 electrons/m^3 \n",n*10^-21);
printf("Minor carrier concentration  = %.2f x 10^11 holes/m^3\n",p*10^-11);
printf("Resistivity  = %.3f ohm m",rho);
