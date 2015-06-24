//clear//
clear;
clc;

//Example 16.1
//Given
mdot = 20000; //[lb/h]
xin = 0.20;
xout = 0.50;
Pg = 20; //[lbf/in.^2]
Pabs = 1.93; //[lbf/in.^2]
U = 250; //[Btu/ft^2-h-F]
Tf = 100; //[F]

//Solution
//the amount of water in feed and thick liquor, from material balance
w_feed = 80/20; //[lb/per pound of solid]
w_liquor = 50/50; //[lb/per pound of solid]
//water evaporated
w_eva = w_feed-w_liquor; //[lb/per pound of solid]
//or
w_eva = w_eva*mdot*xin; //[lb/h]
//Flow raye of thick liquor is 
ml_dot = mdot-w_eva //[lb/h]

//Steam consumed
//Since with strong solutions of NaOH the heat of dilution is not negligible,
//the rate of heat transfer is found from Eq.(16.4) and Fig. 16.8.
//The vaporiztion temperature of the 50 percent solution at a pressure of 100 mmHg
//is found as follows
Tb_w = 124; //[F], at 100 mmHg, from Appendix 7
Tb_s = 197; //[F], from Fig. 16.8
BPE = Tb_s-Tb_w; //[F]
//From Fig. 16.8, the enthalpies of the feed and thick liquor are found
Hf = 55;  //[Btu/lb], 20% solids, 100 [F] 
H   = 221; //[Btu/lb], 50% solids, 197 [F]
//Enthalpy of the leaving water vapor is found from the steam table
Hv = 1149; //[Btu/lb], At 197 [F] and 1.93 [lbf/in.^2]
//Enthalpy of the vapor leaving the evaporator
lambda_s = 939;//[Btu/lb], At 20 [lbf/in.^2], from Appendix 7
//Using Eq.(16.4), the rate of heat transfer and steam consumption
q = (mdot-ml_dot)*Hv + ml_dot*H - mdot*Hf; //[Btu/h]
ms_dot = q/lambda_s; //[lb/h]
disp('lb/h',ms_dot,'steam consumed is')
//Economy
Economy = ml_dot/ms_dot
disp(Economy,'Economy')
//Heating Surface
//The condensation temperature of the steam is 259 [F], the heating area required is 

A = q/(U*(259-197)) //[ft^2]  
disp('ft^2',A,'heating area required is') 
