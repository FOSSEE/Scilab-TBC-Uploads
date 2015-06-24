clear;
clc;

// Illustration 7.4
// Page: 227

printf('Illustration 7.4 - Page: 227\n\n');

// solution

//****Data****//
// A = benzene vapour; B = Nitrogen Gas
P = 800;// [mm Hg]
Temp = 273+60;// [K]
pA = 100;// [mm Hg]
//******//

pB = P-pA;// [mm Hg]
MA = 78.05;// [kg/kmol]
MB = 28.08;// [kg/kmol]

// Mole Fraction
printf("On the Basis of Mole Fraction\n");
yAm = pA/P;
yBm = pB/P;
printf("Mole Fraction of Benzene is %f\n",yAm);
printf("Mole Fraction of Nitrogen is %f\n",yBm);
printf("\n");

// Volume Fraction
printf("On the Basis of Volume Fraction\n");
// Volume fraction is same as mole Fraction
yAv = yAm;
yBv = yBm;
printf("Volume Fraction of Benzene is %f\n",yAv);
printf("Volume Fraction of Nitrogen is %f\n",yBv);
printf("\n");

// Absolute Humidity
printf("On the basis of Absolute humidity\n")
Y = pA/pB;// [mol benzene/mol nitrogen]
Y_prime = Y*(MA/MB);// [kg benzene/kg nitrogen]
printf("The concentration of benzene is %f kg benzene/kg nitrogen\n",Y_prime);