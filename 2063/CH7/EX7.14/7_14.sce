clc
clear
//Input data
r=14;//The compression ratio of a diesel engine
Vc=1;//Clearance volume in m^3
c=0.08;//Fuel supply cut off point
nr=0.55;//Relative efficiency
H=10000;//Calorific value of fuel in kcal/kg
r1=1.4;//Ratio of specific heat of air
Vs=13;//Stroke volume in m^3

//Calculations
rho=Vc+(c*Vs);//Cut off ratio
na=1-(1*(rho^r1-1)/((r^(r1-1)*r1)*(rho-1)));//Air standard efficiency of diesel cycle in percent
In=(na*nr);//Indicated thermal efficiency in percent
H1=(4500*60)/(In*427);//Heat in fuel supplied/1HP hr
W=H1/10^4;//Weight of fuel required/1HP hr

//Output
printf('The weight of fuel required per 1HP hr is %3.4f kg',W)
