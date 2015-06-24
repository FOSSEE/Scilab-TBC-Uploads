printf("\t example 13.4 \n");
printf("\t approximate values are mentioned in the book \n");
vA=2*3.7+(7.4); // for steam
vB=14.8+(2*7.4); // for CO2
MA=18;
MB=44;
T=403; // K
Pt=3.04; // atm
kd=(0.0166)*(((403^(3/2))/(3.04*(14.8^(1/3)+29.6^(1/3))^(2)))*((1/18)+(1/44))^(1/2)); // eq 13.31
printf("\t diffusivity is : %.2f ft^2/hr \n",kd);
// end
