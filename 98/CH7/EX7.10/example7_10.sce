//Chapter 7
//Example 7_10
//Page 154

clear;clc;

h=[6 12 6];
mw=[20 5 6];
pf=[0.8 0.8 0.8];
days=365;
kv=110;
cc=6000;
id=0.1;
cost=6;
ra=0.176;

v=kv*1000;
printf("Resistance of one conductor = %.3f/a ohm \n\n", ra);
printf("Line voltage = %d V \n\n", v);
sum_i=0;
for i=1:3
  I(i)=mw(i)*1e6/sqrt(3)/v/pf(i);
  printf("Current at %d MW = %.2f A \n\n", mw(i), I(i));
  sum_i=sum_i+I(i)^2*h(i);
end
e=3*ra*sum_i/1000;
loss=e*days;
ac=cost*loss/100;
vac=id*cc;
a=sqrt(ac/vac);

printf("Energy lost per day in  three phase line = %.2f/a kWh \n\n", e);
printf("Energy lost per annum = %.2f/a kWh \n\n", loss);
printf("Annual cost of energy lost = Rs. %.2f/a \n\n", ac);
printf("Variable annual charge = Rs. %d*a \n\n", vac);
printf("Area of cross section = %.2f cm^2 \n\n", a);
