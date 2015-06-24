
clc
//initialisation of variables
V=10//ft^3
T1=120//F
P=30 //lbf/in^2
p1=0.8//lbf/in^2
T2=50//F
T=580//F
m=(29.2*144*V)/(55.15*T)//lbm
mv=(p1*144*V)/(85.76*T)//lbm
mv1=(0.1781*144*V)/(85.76*510)//lbm
g1=1.314*0.177//lbm
g2=0.0173*18.07//lbm
M=mv-mv1//lbm
v1=1113.7-(1.6924*144*203.27)/(778)//Btu/lbm
v2=1083.7-(0.1781*144*1703.2)/(778)//Btu/lbm
//CALCULATIONS
Q=g1*(T2-T1)+mv1*(v2)+g2-mv*(v1)//Btu
//RESULTS
printf('The heat transfer when the contents of the tank are cooled =% f lbm',Q)
