//Example 6_5
clc;clear;
// given values
rho=0.076;//The density of air in lbm/ft^3
V_1=7*1.4667;// Wind speed in ft/s
D=30;//Diameter in ft
W_act=0.4;//kW

//Calculation 
//(a)
A_1=(%pi*D^2)/4;
m=rho*V_1*A_1;
Ke_1=((V_1^2)/(2*32.2*737.56));
W_max=m*Ke_1;
n_wt=W_act/W_max;
printf("The efficiency of the wind turbine–generator unit=%0.3f or(%0.1f percentage)\n",n_wt,n_wt*100);
//(b)
V_2=V_1*sqrt(1-n_wt);//The exit velocity in m/s
F_r=(m*(V_2-V_1))/32.2;
printf("The horizontal force exerted by the wind on the supporting mast of the wind turbine=%0.1f lbf\n",F_r);
// The answer vary due to round off error
