clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.8
// Page 210
printf("Example 5.8, Page 210 \n \n");

// solution

// basis 8000 kg/h mixture is to be cooled
qn1m = .118*8000    // kg/h
qn1 = qn1m/93.1242  // kmol/h
qn2m = 8000-qn1m     // kg/h
qn2 = qn2m/18        // kmol/h
T1 = 373.15   //K
T2 = 313.15   //K
fi = qn1*[206.27*(T1-T2)-211.5065*10^-3*(T1^2-T2^2)/2+564.2902*10^-6*(T1^3-T2^3)/3] + qn2*[50.845*(T1-T2)+213.08*10^-3*(T1^2-T2^2)/2-631.398*10^-6*(T1^3-T2^3)/3+648.746*10^-9*(T1^4-T2^4)/4]  // kJ/h
printf(" Heat removal rate of subcooling zone of the condenser = "+string(fi)+" kJ/h.")
