
clc
//initialisation of variables
w=-1.68//ft-lbf
v=-0.108//ft-lbf/lbf-R
T=520//F
q=T*v//ft-lbf
u=q-w//ft-lbf
p=(2.8/10^5)^2//ft^3/lbm
p1=(1.82/10^3)//ft^3/lbm
p2=(10^8/5.9)//ft^3/lbm
T1=(144/778)//F
//CALCULATIONS
Cp=(p*p1*p2*T*T1)//Btu/lbm-R
//RESULTS
printf('The work done on the copper during this process the change in entropy=% f Btu/lbm-R',Cp)
