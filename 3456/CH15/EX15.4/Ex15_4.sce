//Example 15.4
//Temperature in Metalworking
//Page No. 526
clc;clear;close;

Al_s=200;              //in MPa
Al_e=1;              //no unit
Al_p=2.69;              //in g/cm^3
Al_c=0.215;              //in cal/g * deg C
Ti_s=400;              //in MPa
Ti_e=1;              //no unit
Ti_p=4.5;              //in g/cm^3
Ti_c=0.124;              //in cal/g * deg C
J=4.186;              //in J/cal
b=0.95;              //no unit
Al_Td=Al_s*Al_e*b/(Al_p*Al_c*J);
Ti_Td=Ti_s*Ti_e*b/(Ti_p*Ti_c*J);
printf('\nTemperature Rise for aluminium = %g C\nTemperature Rise for titanium = %g C\n',Al_Td,Ti_Td);
