clear;
clc;

// Stoichiometry
// Chapter 7
// Combustion


// Example 7.11
// Page 473
printf("Example 7.11, Page 473 \n \n");

// solution

// basis 100 kg of fuel
// material balance of carbon
CO2 = 7.092+.047 //kmol   in flue gases
N2 = 11.94*7.139/7.01
O2 = 11.94*7.139/7.01
flue = CO2+N2+O2
// material balance of O2
O2air = 21*N2/79
airin = N2+O2air
tO2in = O2air+.078  // O2 in burner
O2xcs = tO2in-9.864
// material balance of water vapour
moistfrmd = 5.45 // kmol    from combustion of H2
H = .0331 // kmol/kmol of dry air        humidity at 100.7 kPa
moistair = H*104.482  //kmol
tmoist = moistfrmd+moistair
pxcsair = O2xcs*100/9.786
// now using table 7.32
H7 = 3391.203*(563.15-298.15)  //kJ
Ff = 400 // kg/h   fuel firing rate
tH = 2791.7-179.99 // kJ/kg    total heat supplied in boiler
fi5 = tH*4365  // kJ/h
fi8 = 5.45*18*Ff*2403.5/100  // kJ/h
GCVf = 42260  //kJ/kg
fi1 = Ff*GCVf
Fdryair = 104.482*29*Ff/100
Cha = 1.006+1.84*.0205  // kJ/kg dry air K
fi3 = Fdryair*Cha*(308.15-298.15)
fi2 = Ff*1.758*(353.15-298.15)
BOILEReff1 = fi5*100/fi1
NCVf = GCVf-(18.0153/2.016)*.109*2442.8  // kJ/kg
BOILEReff2 = fi5*100/(Ff*NCVf)
r = 4365/Ff // steam:fuel
BOILERcapacity = fi5/2256.9
printf(" After performing material and thermal balance operations we get \n  \n Overall thermal efficiency of the boiler based on GCV of the fuel = "+string(BOILEReff1)+" percent. \n \n Overall efficiency of the boiler based on NCV of the fuel = "+string(BOILEReff2)+" percent. \n \n Steam to fuel ratio = "+string(r)+" at 16 bar. \n \n Equivalent boiler capacity = "+string(BOILERcapacity)+" kg/h.")
