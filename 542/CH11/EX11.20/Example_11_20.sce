//Example 11.20

clear;
clc;

printf("\tExample 11.20\n");

//Mole fraction
xf=[0.2 0.3 0.2 0.3];

//Viscosity at mean tower temp. in mNs/m^2
uL=[0.048 0.112 0.145 0.188];

//Viscosity of water in mNs/m^2
uw=1;

sums=0;
for i=1:4
    sums=sums+(xf(i)*uL(i)/uw);
end

//Efficiency by DRICKAMER and BRADFORD
E=0.17-(0.616*log10(sums));

printf("\nEfficiency is %.2f",E);

//End