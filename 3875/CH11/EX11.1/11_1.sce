clc;
clear;
I=10*10^-3 //current in Ampere
e=1.6*10^-19 //charge in C
h=6.63*10^-34 //Plancks constant in J-s
c=3*10^8 //velocity of light in m/s
V=25*10^3//voltage in V

n=(I/e)
mprintf("The no of electrons striking the target are = %1.2e\n",n)

lambda_min=(h*c)/(e*V)
mprintf("The minimum wavelegth of the emitted Xrays is = %1.2e m",lambda_min)
