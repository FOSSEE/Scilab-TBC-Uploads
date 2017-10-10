//Chapter 2, Example 2.2, Page 33
clc
clear
//Find the energy equivalent in MeV of the electron rest mass
m1 = 9.109*10**-31 // kg
m2 = 5.486*10**-4 // atomic mass units
c1 = 2.998*10**8 // m/s
c2 = 931.49 // MeV/u
E1 = (m1*c1*c1)/(1.602*10**-13)
E2 = m2*c2
printf("E = %f MeV",E1);
printf("\n E measured in atomic mass unit and appropriate conversion factor= %f MeV",E2);

//Answers may vary due to round off error
