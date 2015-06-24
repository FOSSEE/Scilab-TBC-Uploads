clear ;
clc;
// Example 27.1
printf('Example 27.1\n\n');
//page no. 838
// Solution E27.1

// Given 
V_w = 1 ;//  Volume of given water -[L]
P_atm = 100 ;// Atmospheric pressure - [kPa]

//W = -p*del_V
V_H2O = 0.001043 ;// Specific volume of water from steam table according to book- [cubic metre] 
V_vap = 1.694 ;// Specific volume of vapour from steam table according to book- [cubic metre] 
V1 = 0 ;// Initial volume of H2O in bag-[cubic metre]
V2 = (V_w*V_vap)/(1000*V_H2O) ;// Final volume of water vapour -[cubic metre] 
W = -P_atm*(V2 -V1)* 1000 ;// Work done by saturated liquid water -[J]
 
printf(' Work done by saturated liquid water is %.3e J.\n',W) ;