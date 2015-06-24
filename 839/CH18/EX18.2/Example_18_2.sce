//clear//
clear;
clc;

//Example 18.2
//Given
mdot = 30000; //[kg/h]
wF_b = 40;
wD = 97;
wB = 2;
R = 3.5;
lambda_b = 7360; //[cal/g mol]
lambda_t = 7960; //[cal/g mol]
alpha = 2.5;
TB = 95; //[C]
TF = 20; //[C]
P = 1; //[atm]
Mb = 78;
Mt = 92;
Cp = 0.44; //[cal/g-C]
//(a)
//The concentrations of feed, overhead and bottoms in mole fraction of benzene are
xF = (wF_b/Mb)/(wF_b/Mb+((100-wF_b)/Mt));
xD = (wD/Mb)/(wD/Mb+((100-wD)/Mt));
xB = (wB/Mb)/(wB/Mb+((100-wB)/Mt));
//The average molecular weight of the feed is
Mavg = 100/(wF_b/Mb+(100-wF_b)/Mt);
//the average heat of vaporization
lambda_avg = xF*lambda_b+(1-xF)*lambda_t; //[cal/g mol]
//Feed rate
F = mdot/Mavg; //[kg mol/h]
//Using Eq.(18.5), by overall benzene balance
D = F*(xF-xB)/(xD-xB); //[kg mol/h]
B = F-D; //[kg mol/h]
disp('respectively','kg mol/h',B,'kg mol/h',F,'the mole of overhead and bottom products are')


//(b)Detemination of number of ideal plates and position of feed plate
//(i)
//Using Fig.18.16
//Drawing the feed line with f = 0 on equilibrium diagram,
//Plotting the operating lines with intercept from Eq.(18.19)is 0.216 
//By counting the rectangular steps it is found that, besides the reboiler, 
//11 ideal plates are neded and feed should be introduced on the 7th plate from
//the top.

//(ii)
//The latent heat of vaporization of the feed 
lambda = lambda_avg/Mavg; //[cal/g]
//Using Eq.(18.24)
q = 1+Cp*(TB-TF)/lambda;
//From Eq.(18.31)
slope = -q/(1-q);
//From Fig. 18.17
//It is found that a reboiler and 10 ideal plates are needed and feed is to be introduced 
//on the fifth plate

//(iii)
q = 1/3;
slope = -q/(1-q);
//From Fig. 18.18
//It calls for a reboiler and 12 plates, with the feed entering on the 7th plate

//(c)
//vapor flow in the rectifying section is
V = 4.5*D; //[kg mol/h]
lambda_s = 522; //[cal/g], From Appendix 7
q = [1, 1.37, 0.333]
//Using Eq.(18.27)
Vbar = V-F*(1-q) 
//Using Eq.(18.32), steam required
ms_dot = lambda_t/lambda_s*Vbar; //[kg/h]
disp('respectively','kg/h',ms_dot(3),'kg/h',ms_dot(2),'kg/h',ms_dot(1),'the steam consumption in the above three cases is')


//(d)
Tw1 = 25; //[C]
Tw2 = 40; //[C]
//The cooling water needed is same in all cases, Using Eq.(18.33)
mw_dot = V*lambda_t/(Tw2-Tw1); //[kg/h]
rho_25 = 62.24*16.018; //[kg/m^3]
vw_dot = mw_dot/rho_25; //[m^3/h]
disp('m^3/h',vw_dot,'cooling water needed is')
