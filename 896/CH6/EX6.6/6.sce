clc
//Example 6.6
//Calculate pressure difference across the duct
p=14.75//lbf/in^2
M=29//lbm/lbmol
R=10.73//lbf.ft^3/(in^2.lbmol.R)
T=500//R Rankine temperature scale
rho=p*M/(R*T)//lbm/ft^3
q=500//ft^3/min
d=1//ft
A=(%pi)*d^2/4//ft^2
v=(q/60)/A//ft/s
mew=0.017//cP
//1cP = 0.000672 lbm/ft/s
R=d*v*rho/(mew*0.000672)//dimentionless reynold's no.
f=0.00465//fanning friction factor
dx=800//ft lenght of duct
//1 ft = 12 in
//1 lbf.s^2 = 32.2 lbm.ft
dP=rho*(4*f*(dx/d)*(v^2/2))/32.2/144//lbf/in^2
printf("The pressure drop across the duct is %f lbf/in^2",dP);