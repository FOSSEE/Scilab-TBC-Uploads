// Example 2_1
clc;funcprot(0);
// Given data
C_c=120000;// The number of chips per day to its customers in chips/day
C_s=100000;// The number of chips receives per day from its suppliers in chips/day
C_m=30000;// The number of chips manufactures of its own in chips/day
C_r=3000;// The number of chips are rejected as defective and are destroyed in chips/day

// Solution
X_T=C_s-C_c;// The net transport of chips into the facility in chips/day
X_P=C_m-C_r;// The net production of chips in chips/day
X_G=X_T+X_P;// The net gain in computer chips at the end of each day in in chips/day
printf('\nThe net gain in computer chips at the end of each day,X_G=%4.0f chips per day.',X_G);
