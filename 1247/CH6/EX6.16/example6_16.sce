clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.16
// Page 387
printf("Example 6.16, Page 387 \n \n");

// solution

// M = E+B+W
Tav = (45+32)/2 +273.15 //K   avg cooling water T
// using steam tables (Appendix A IV.1)
lamda = 2410.5  //kJ/kg 
E = 530/lamda  //kg/s
Cl = 4.1868
Ti = 45+273.15 //K
To = 32+273.15 //K
fi = 530 // = mc*Cl*(Ti-To)
mc = 530/(Cl*(Ti-To))    //kg/s
W = .3*mc/100  //kg/s
// dissolved solid balance
// M*xm = (B+W)*xc
// 500*10^-6*M = (B+.0292)*2000*10^-6
// solving above eqs
B = .0441 //kg/s
M = .2932 //kg/s
//energy balance on cooling tower
// fi = ma*(i2-i1)
// i2-i1 = 11.042 kJ/kg dry air
// moisture balance 
//E = ma(H2-H1)
H2 = .2199/48 + .0196
iws = 2546.2 // Appendix IV
Ch1 = 1.006+1.84*.0196
i1 = 1.006*(297.45-273.15)+.0196*iws+1.042*(308.15-297.5) // kJ/kg dry air
i2 = i1 + 11.04
Tdb = ((i2 - 1.006*(301.25-273.15)-iws*H2)/1.05)+301.25 // K
printf("Air leaves th induced draft fan at "+string(Tdb)+" K.")


