//Chapter 7
//Example 7_7
//Page 153

clear;clc;

l=1;
i=200;
//cost = (20*a + 20)
cost=5;
id=0.1;
p=1.73*1e-6;

ra=p*l*1e5;
e=2*i^2*ra*8760/1000;
ac=cost*e/100;
cc=20*1000;
vac=id*cc;
a=sqrt(ac/vac);

printf("Resistance of one conductor = %.3f/a ohm \n\n", ra);
printf("Energy lost per annum = %.1f/a kWh \n\n", e);
printf("Annual cost of energy lost = Rs. %d/a \n\n", ac);
printf("Capital cost is given to be Rs.20*a per metre. Threfore for 1km cable = Rs. %d*a \n\n", cc);
printf("Variable annual charge = Rs. %d*a \n\n", vac);
printf("Area of cross section = %.2f cm^2 \n\n", a);
