//Chapter 7
//Example 7_9
//Page 154

clear;clc;

i=250;
cc=5;
id=0.1;
cost=5;
d=8.93;
p=1.73*1e-8;
l=1;

ra=p*l;
e=2*i^2*ra*8760/1000;
ac=cost*e/100;
mass=2*d*l*1000;
cc=cc*mass;
vac=id*cc;
a=sqrt(ac/vac);

printf("Resistance of one conductor = %.3f*10^-8/a ohm \n\n", ra*1e8);
printf("Line current = %.2f A \n\n", i);
printf("Energy lost per annum = %d*10^-8/a kWh \n\n", e*1e8);
printf("Annual cost of energy lost = Rs. %d*10^-8/a \n\n", ac*1e8);
printf("Mass of 1m feeder = %.2f*10^3*a \n\n", mass*1e-3);
printf("Capital cost is given to be Rs.20*a per metre. Threfore for 1km cable = Rs. %d*a \n\n", cc);
printf("Variable annual charge = Rs. %d*a \n\n", vac);
printf("Area of cross section = %.2f*10^-4 m^2 \n\n", a*1e4);
