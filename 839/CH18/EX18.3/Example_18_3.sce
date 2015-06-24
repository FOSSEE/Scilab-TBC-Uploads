//clear//
clear;
clc;

//Example 18.3
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
//Solution
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
//Using Table 18.3, in all three cases respectively
xprime = [0.44,0.521,0.3];
yprime = [0.658,0.730,0.513];

//(a)
//Using Eq.(18.43)
RDm = (xD-yprime)./(yprime-xprime)
disp('respectively',RDm(3),RDm(2),RDm(1),'Minimum Reflux Ratio for three cases is')

//(b)
//For minimum umber of plates the, the reflux ratio is infinite, the operating lines
//coincides with the diagonal, and there are no differences between the three cases.
//The plot is given by Fig 18.22. A reboiler and eight plates are needed.
 
