clear;
clc;
printf("\t\t\tExample Number 1.7\n\n\n");
// calculating rate of heat loss from cylinder per unit length
// solution

Tw =50 ;//[degree celsius] temperature of the cylinder

Tf =25 ;//[degree celsius] temperature of the air
D=0.02;//[m] diameter of the cylinder
hm=8;//[W/m^2 degree celcius] mean heat transfer coefficient
qm=hm*(Tw-Tf);//[W/m^2] heat flux, by Newton's law of cooling
// Total heat flow rate is qm*A
//hence heat flow rate per unit length is Q=qm*A/L= qm*%piDL/L = qm*%pi*D
Q=qm*%pi*D; //[W/m]heat flow rate per unit length


printf("The heat flow rate per unit length is %f W/m",Q);
