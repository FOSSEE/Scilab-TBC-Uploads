clear
clc
//to find root mean square speed of hydrogen molecule

//Given:
//pressure
p = 1//in atm
//density of hydrogen
rho = 8.99e-2//in Kg/m^3

//Solution:
//assume hydron as ideal gas
//applying formula of root mean square speed for ideal gas
//root mean square speed of hydrogen molecule
vrms = sqrt((3*p*1.01e5)/(rho))//in m/s //taking pressure in Pa

//answer of vrms is slightly different than book answer.But ans. by scilab program is same as that of calculator
printf ("\n\n Root mean square speed of hydrogen molecule vrms = \n\n %4i m/s" ,vrms);
