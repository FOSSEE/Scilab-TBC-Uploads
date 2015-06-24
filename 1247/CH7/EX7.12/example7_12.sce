clear;
clc;

// Stoichiometry
// Chapter 7
// Combustion


// Example 7.12
// Page 478
printf("Example 7.12, Page 478 \n \n");

// solution

// basis 100 kmol of dry producer gas
C = 33*12 // kg
O2 = 18.5*32  //kg
H2 = 20*2 // kg
O2air = 21*51/79 // kmol
COALgassified = 396/.672  // kg
O2coal = COALgassified*.061/32  // kmol
tO2 = O2coal + O2air
O2steam = 18.5-tO2  // kmol
H2steam = 2*O2steam  // kmol
H2fuel = 20-H2steam
dryproducergas = 100*22.41/COALgassified  // Nm^3/kg coal
Pw = 2.642 // kPa
Ha = Pw/(100.7-Pw)  // kmol/kmol dry gas
water = Ha*100
moistproducergas = (100+water)*22.41/COALgassified // Nm^3/kg coal
dryair = (51*28+O2air*32)/COALgassified  // kg/kg coal
tsteamsupplied = H2steam+water-(COALgassified*.026/18)  // kmol
steam = tsteamsupplied*18/COALgassified
printf(" (a) \n \n Moistproducer gas obtained = "+string(moistproducergas)+" Nm^3/kg coal. \n \n \n (b) \n \n Air supplied = "+string(dryair)+" kg/kg coal gassified. \n \n \n (c) \n \n Steam supplied = "+string(steam)+" kg/kg coal.")
