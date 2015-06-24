clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.21
// Page 396
printf("Example 6.21, Page 396 \n \n");

// solution

// basis : product rate of 100 kg/h
H1 = .036 // kg moist/ kg dry solid
X1 = .25/.75 // kg /kg dry solid
X2 = .02/.98 // kg/kg dry solid
// moist balance
// ms*(X1-X2) = ma*(H2-H1)
To = 273.15 //K
is1 = 1.43*(30-0)+X1*4.1868*30 
is2 = 1.43*80+.0204*4.1868*80
Tdb = 393.15 //K
Tdp1 = 308.15 //K
iwb1 = 2565.4  //kJ/kg
Ch1 = 1.006+1.84*.036
ia1 = 1.006*(Tdp1-273.15)+H1*iwb1+Ch1*(Tdb-Tdp1)
H2 = .056
Tdp2 = 315.55
iwb2 = 2578.7
ia2 = 1.006*(Tdp2-273.15)+H2*iwb2+(1.006+1.84*H2)*(323.15-Tdp2)
ma = .085/(.056-.036)
iaa = 1.006*(Tdp1-273.15)+H1*iwb1
fi = 4.25*(218.68-iaa)  //kW
lambda = 2133.0
steam = fi/lambda // kg/h
printf("(a) \n \n Flowrate of incoming air on dry basis = "+string(ma)+" kg/s \n \n \n(b) \n \n Humidity of air leaving the drier = "+string(H2)+" kg/kg dry air. \n \n \n(c) \n \n Steam consumption in the heater = "+string(steam)+" kg/h.")
