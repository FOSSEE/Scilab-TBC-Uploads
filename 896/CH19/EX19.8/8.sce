clc
//Example 19.8
//Calculate the width of jet and entrainment ratio
Vo=40//ft/s
Do=1//ft
x=10//ft
K=6.2//dimentionless
V_centerline=Vo*K*(Do/x)//ft/s
alpha=20//degrees
Dx=Do*(1+(x/Do)*sin(alpha*%pi/180))//ft
printf("The jet diameter is %f ft\n",Dx);
//Let entrainment ratio be r
r=0.62*(x/Do)^0.5//dimentionless
printf("The entrainment ratio is %f",r);