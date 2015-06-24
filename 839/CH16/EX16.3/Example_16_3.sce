//clear//
clear;
clc;

//Example 16.3
//Given
mdot_ft = 60000; //[lb/h]
xin = 0.10; 
Tin = 180; //[F]
xout = 0.50
Ps = 50; //[lbf/in.^2]
Tc = 100; //[F] 

//Solution
//From Table 16.2
U1 = 700;  //[Btu/ft^2-h-F]
U2 = 1000; //[Btu/ft^2-h-F]
U3 = 800;  //[Btu/ft^2-h-F]
//The total rate of evaporation is calculated from an overall material balance
//assuming the solds go through the evaporator without loss
//Table 16.3
mdot_fs = 6000;  //[lb/h]
mdot_fw = 54000; //[lb/h]
mdot_lt = 12000; //[lb/h]
mdot_ls = 6000;  //[lb/h]
mdot_lw = 6000;  //[lb/h]
w_evap = mdot_ft-mdot_fs; //[lb/h]

