clear;
clc;

// Stoichiometry
// Chapter 6
// Stoichiometry and Unit Operations


// Example 6.15
// Page 385
printf("Example 6.15, Page 385 \n \n");

// solution

//basis 1kg of dry air entering the air washer
//from fig 6.15
H1 = 11.8  //g/kg dry air
H2 = 17.76  //g/kg dry air
H = H2-H1  // moisture added during saturation
DB = 300.95 //K
WB = 298.15 //K
DP = 297.15 //K
Ch = 1.006+1.84*.01776 //kJ/kg dry air K
dT = DB-DP
Hs = Ch*3.8
A = 25000 //m^3/h    actual air at 41 and 24 degree celcius
// again from fig 6.15
Vh = .9067  //m^3/kg dry air
qm = A/Vh  //kg dry air/h
fi = qm*Hs //kJ/h
P = 300 //kPa
lamda= 2163.2 //kJ/kg         by appendix IV.2
SC = fi/lamda  //kg/h     steam consumption at the heater
printf(" the moisture added to the air = "+string(H)+" g/kg dry air \n DB temp of final air = "+string(DB)+"K \n WB temp of final air = "+string(WB)+"K \n The heating load of the steam coil per kg dry air = "+string(fi)+" kJ/h \n Steam consumption = "+string(SC)+" kg/h.")
