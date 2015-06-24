clc;
clear;

printf("\n Example 9.33\n");

d=150e-3;//Internal diameter of tube
d_o=168e-3;//outer diameter of tube
d_w=159e-3;
d_s=268e-3;
d_m=(d_s-d_o)/log(d_s/d_o);//log mean of d_o and d_s
h_i=8500;//The coefficient for condensing steam together with that for any scale
k_w=45;
k_l=0.073;
x_l=50e-3;
x_w=9e-3;
DT=444-294;
sigma=5.67e-8;
//The temperature on the outside of the lagging is estimated at 314 K and (hr + hc) will be taken as 10 W/m2 K.
//total thermal resisitance 
R=(h_i*%pi*d)^-1+(10*%pi*d_s)^-1+(k_w*%pi*d_w/x_w)^-1+(k_l*%pi*d_m/x_l)^-1;
Q_l=DT/R; //The heat loss per metre of length(from eq 9.261)
DT_lagging=((k_l*%pi*d_m/x_l)^-1/R)*DT;
//Taking an emissivity of 0.9, from equation 9.119:

h_r=(0.9*sigma*(310^4-294^4))/(310-294);
C=1.32;
//Substituting in equation 9.105 (putting l = diameter = 0.268 m):
h_c=C*((310-294)/d_s)^0.25;
//If the pipe were unlagged,(hc+hr)for DT=150 K would be about 20 W/m2 K and the heat loss would then be:
Q_l=20*%pi*d_o*150;
printf("\n The heat loss to the air = %.2f kW/m",Q_l*1e-3);