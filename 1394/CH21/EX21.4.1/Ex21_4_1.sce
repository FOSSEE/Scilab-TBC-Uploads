
clc
//initialization of variables
slope = 230 //J/g-mol-C
nair = 60 // gmol/cm^2-sec
CpH2O = 75 // J/gmol-C
f = 0.4 // Correction factor
F = 2150/(60*0.018)//gmol/m^2-sec
kc= 20/3
a = 3 // m^2/m^3
k = 2.7 // integral of dH/Hi-H with limits Hout and Hin
//Calculations
nH2Omax = slope*nair/CpH2O//gmol/m^2-sec
nH2O = nH2Omax*(1-f) //gmol/m^2-sec
A = F/nH2O // m^2
l = (nair/(kc*a))*k // m
//Results
printf("The flow rate of the water per tower cross section is %.f gmol H2O/m^2-sec",nH2O)
printf("\nThe area of tower cross section is %.f m^2",A)
printf("\nThe length of the tower is %.1f m",l)

