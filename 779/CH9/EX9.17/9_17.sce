// Given
th1 = 90+273;
tc1 = 25+273;
tc2 = 50+273;
mc = 1; T0 = 300;
th2p = 60+273; // Parallel
th2c = 35+273; // Counter
mhp = (tc2-tc1)/(th1-th2p); // Parallel
mhc = (tc2-tc1)/(th1-th2c); // Counter
h0 = 113.2; s0 = 0.395; T0 = 300; // At 300 K
h1 = 376.92; s1 = 1.1925; // At 90 degree
af1 = mhp*((h1-h0)-T0*(s1-s0));
// Parallel Flow
h2 = 251.13; s2 =0.8312; // At 60 degree
h3 = 104.89; s3 = 0.3674; // At 25 degree
h4 = 209.33; s4 = 0.7038; // At 50 degree
REG = mc*((h4-h3)-T0*(s4-s3)); // Rate of energy gain
REL = mhp*((h1-h2)-T0*(s1-s2)); // Rate of energy loss
Ia = REL-REG; // Energy destruction
n2a = REG/REL; // Second law efficiency
disp("In parallel flow")
disp("kW",Ia,"The rate of irreversibility is")
disp("%",n2a*100,"The Second law efficiency is")
// Counter flow
h2 = 146.68; s2 = 0.5053; // At 35 degree
REG_b = REG; // Rate of energy gain by hot water is same in both flows
REL_b = mhc*((h1-h2)-T0*(s1-s2));
Ib = REL_b-REG_b; // Energy destruction
n2b = REG_b/REL_b; // Second law efficiency
disp("In Counter flow")
disp("kW",Ib,"The rate of irreversibility is")
disp("%",n2b*100,"The Second law efficiency is")