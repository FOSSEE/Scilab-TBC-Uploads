clc;
clear;
m=9.1*10^-31 //mass of electron in kg
v=4*10^5 //velocity in m/s
u=10^-4 //uncertainity in momenmtum
h=6.63*10^-34 //plancks constant in J-s


//calculation
delta_p=u*m*v //in kg-m/s
delta_x=(h/(2*%pi*delta_p))
mprintf("The uncertainity in the position of the electron is %1.4e m",delta_x)
//The answer provided in the textbook is wrong.
