clear
clc
//Example 12.10 NOZZLE EXIT CONDITION
k=1.4;
//From table A.1, interpolating for A/Ao=4,
M=2.94; //Mach number
pb=100; //back pressure[kPa]
pt=1300; //total pressure[kPa]
pe=pt/((1+[(k-1)/2]*M^2)^(k/(k-1))) //[kPa]
printf("\n Because (pe=%.1f) < (pb=%.f), the nozzle is overexpanded.\n",pe,pb)