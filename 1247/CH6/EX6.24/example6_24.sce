clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.24
// Page 403
printf("Example 6.24, Page 403 \n \n");

// solution

Fspd1 = 4300 // kg/h
Bcrtn = Fspd1*600*10^-6 // kg/h
Fspd2 = Bcrtn/.00645 // kg/h
evp1 = Fspd1-Fspd2
Fspd3 = Bcrtn/.057
evp2 = Fspd2-Fspd3
C3 = Bcrtn/.4
evp3 = Fspd3-C3
fi1 = Fspd1*2.56*(468.15-373.15)+3900*450 // kJ/h
fi2 = Fspd2*2.56*(463.15-468.15)+354.737*450 // kJ/h
fi3 = Fspd3*2.56*(453.15-463.15)+38.813*450 // kJ/h
fi = fi1+fi2+fi3
mt = fi/(2.95*(503.15-478.15)) // kg/h
qt = mt/.71 // l/h
mccw1 = 1755000/(8*4.1868)  // kg/h
mccw2 = mccw1*.9 
dT2 = 159632/(mccw2*4.1868)
mccw3 = mccw1-mccw2
dT3 = 17466/(mccw3*4.1868)
dT = (1755000+159632+17466)/(mccw1*4.1868)
Fw = 1932098/(8*4.1868) // kg/h
printf("By mass balance, required cooling water flow in external cooler = "+string(Fw)+" kg/h.\n\nBy enthalpy balance, overall rise in CCW temperature = "+string(dT)+" K.")
