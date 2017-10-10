//How high will water rise in Xylem vessel of a plant

//Examlpe 21.1

clc;

clear;

gyma=0.07275; //Suface tension in N m^-1

r=0.020*10^-2; //Radius of Xylem vessel in m

g=9.81; //Acceleration due to gravity in m s^-1

rho=1*10^3; //Density of water in kj m^-3

costheta=1; //Beacause the contact angle is quite small we assume that theta=0

h=(2*gyma*costheta)/(rho*g*r); //Height of the water that rise up in Xylem vessel in m (1 N=1 kg m s^-2 therefore N s^2 kg^-1=1 m)

printf(" Hight of the  water that rise up in Xylem vessel of a plant = %.3f m",h); 
