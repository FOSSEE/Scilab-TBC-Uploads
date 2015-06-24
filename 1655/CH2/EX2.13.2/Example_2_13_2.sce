// Example 2.13.2  page 2.57

clc;
clear;

Pin=500d-6;     //input power
L=200;      //length of fiber
loss=2;     //loss associated with fiber

Pin_dbm=10 * log10 (Pin/(10^-3));   //computing input power in dBm
Pin_dbm=round(Pin_dbm);
Pout_dbm=Pin_dbm-L*loss;        //computing output power level
Pout= 10^(Pout_dbm/10);
printf("Output power is %.2e mW.",Pout);
