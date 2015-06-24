clc
//Example 13.5
//Calculate the headstrom ,reynold numbers and the fanning friction factor
tow_yield=3.8//Pa
mew=0.00686//Pa.s
D=0.0206//m
rho=1530//kg/m^3
V=3.47//m/s
He=tow_yield*D^2*rho/mew^2//dimentionless (headstrom number)
printf("The headstrom number is %f\n",He);
R=D*V*rho/mew//dimentionless (reynolds number)
printf("The reynolds number is %f\n",R);
dP=11069//Pa/m
f=dP*D/(4*rho*V^2/2)//dimentionless (fanning friction factor)
printf("The fanning friction factor is %f",f);