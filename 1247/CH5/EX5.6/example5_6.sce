clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.6
// Page 207
printf("Example 5.6, Page 207 \n \n");

// solution

// basis 1kg Diphyl A-30
Q = .7511*(553.15-313.15) + 1.465*10^-3*(553.15^2-313.15^2)/2   // kJ/kg
fi = Q*4000  // kJ/h    for mass flowrate 4000 kg/h
Clm = (1.1807+1.5198)/2
fi1 = Clm*(553.15-313.15)*4000/3600  // kJ/h
err = (fi1-Q)*100/Q
printf(" Heat to be supplied = "+string(fi1)+" kW \n Percent error = "+string(err)+".")
