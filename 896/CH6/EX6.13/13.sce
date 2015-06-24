clc
//Example 6.13
//Calculate the gasoline leakage rate through a seal
p=100//lbf/in^2
l=1//in length od seal in direction of leak
mew=0.6//cP
d=0.25//in diameter of valve stem
t=0.0001//in thickness of valva stem
//1 cP = 0.0000209 lbf.s/ft^2
//1 ft = 12 in
q=(p/l)*(1/12/mew)*(%pi)*d*t^3/0.0000209*144*3600//in^3/hr
printf("The volumetric leakage rate of gasoline is %f in^3/hr\n",q);
rho=0.026//lbm/in^3
m=q*rho//lbm/hr
printf("The mass leakage rate of gasoline is %f lbm/hr",m);