//Chapter 7
//Example 7_8
//Page 153

clear;clc;

mw=5;
kv=33;
pf=0.8;
cost=4;
id=0.1;
p=1e-6;

//cost = Rs (25000*a + 2500)

ra=p*1e5;
i=mw*1e6/sqrt(3)/kv/1000/pf;
e=3*i^2*ra*8760/1000;
ac=cost*e/100;
cc=25000;
vac=id*cc;
a=sqrt(ac/vac);

printf("Resistance of one conductor = %.3f/a ohm \n\n", ra);
printf("Line current = %.2f A \n\n", i);
printf("Energy lost per annum = %.1f/a kWh \n\n", e);
printf("Annual cost of energy lost = Rs. %d/a \n\n", ac);
printf("Capital cost is given to be Rs.20*a per metre. Threfore for 1km cable = Rs. %d*a \n\n", cc);
printf("Variable annual charge = Rs. %d*a \n\n", vac);
printf("Area of cross section = %.2f cm^2 \n\n", a);
