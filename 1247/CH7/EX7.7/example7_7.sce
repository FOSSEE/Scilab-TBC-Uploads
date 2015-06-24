clear;
clc;

// Stoichiometry
// Chapter 7
// Combustion


// Example 7.7
// Page 454
printf("Example 7.7, Page 454 \n \n");

// solution

// basis 100 kmol of dry flue gas
O2acntd = 11.4+4.2  // kmol
O2avlbl = (21/79)*84.4 // kmol
O2excs = 4.2 //kmol
O2unactd = O2avlbl-O2acntd
H2brnt = O2unactd*2
O2req = 11.4+O2unactd
pexcsAIR = O2excs*100/O2req
mH2brnt = H2brnt*2 // kg
mCbrnt = 11.4*12
r = mCbrnt/mH2brnt
printf("(a) \n \n Percent excess air = "+string(pexcsAIR)+". \n \n \n(b) \n \n In fuel C:H = "+string(r)+".")
