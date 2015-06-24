clc;
//Example 14.8
//page no 161
printf("\n Example 14.8 page no 161\n\n");
//refer to example no 14.7
rho=860//density
R_e=60000//reynolds no
f=.046/R_e^.2//fanning friction factor
printf("\n fanning friction factor f=%f ",f);
L=9//length of tube
v=2.38//velocity
D=.0493//diameter of tube
g=9.807
h_f=4*f*(L*v^2)/(D*2*g)//friction loss 
printf("\n h_f friction loss=%f m ",h_f);
//applying  bernoulli equation
P_drop=rho*g*h_f//pressure drop in pa
P_drop_a=P_drop/10^5//pressure drop in atm
printf("\n P_drop_a =%f atm",P_drop_a);
