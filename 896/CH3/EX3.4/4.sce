clc
//Calculate vol. flow rate, mass flow  rate and average vel of gasoline through pipe
V=15;//gal volume of gasoline
t=2;//min
rho_water=62.3;//lbm/ft^3
sg=0.72;//specific gravity
q=(15/2)*(0.1336/60)//ft^3/s vol. flow rate
printf("volumetric flow rate is %f ft^3/s\n",q);
m=q*sg*rho_water//lbm/s
printf("Mass flow rate is %f lbm/s\n",m);
d=1;//in diameter of pipe
a=((%pi)*d^2/4)/144;//ft^2 area of pipe
v_avg=q/a//ft/s
printf("The average velocity is %f ft/s",v_avg);