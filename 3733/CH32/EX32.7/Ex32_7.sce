// Example 32_7
clc;funcprot(0);
//Given data
UF=0.5;// Use factor
CF=0.4;// Capacity factor

//Calculation
// Use factor=E/(P_c*t);.... (1)
// Capacity factor=(average load/P_c)=(E/(P_c*8760));....(2)
// Dividing euations (1) and (2) we get,
T=(8760*CF)/(UF);// hours
printf('\nThe number of hours of its operation during the year=%0.0f hours',T);
