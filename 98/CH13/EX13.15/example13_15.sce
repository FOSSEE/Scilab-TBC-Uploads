//Chapter 13
//Example 13_15
//Page 327

clear;clc;

l=500;
i=1;
Va=255;
Vb=250;
r_km=0.1;

r=2*r_km/1000;
x=(Va-Vb)/(i*r*l)+(l/2);
Vc=Va-i*r*x^2/2;
ia=i*x;
ib=i*(l-x);

printf("Resistance of distributor per metre = %.4f ohm \n\n", r);
printf("(i) Minimum potential occurs at %d m from A \n\n", x);
printf("    Minimum voltage Vc = %d V \n\n", Vc);
printf("(ii) Current supplied from A = %d A \n\n", ia);
printf("     Current supplied from B = %d A \n\n", ib);

