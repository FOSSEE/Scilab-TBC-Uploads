
clc
//initialisation of variables
a=14.9//percent
h=85.1*100//percent
O=12.5*0.01//percent
O2=0.7*0.01//percent
CO2=2.5*100//percent
d=0.843//mol of nitrogen
f=3.461//per lb fuel
o=0.232//per lb fuel
//CALCULATIONS
D=O+O2//mol of carbon
W=D*12//lb
E=W/0.851//lb
A=d/0.79//mols
W1=A*28.97//lb
F=W1/E//lb air per lb fuel
T=f/o//lb air per lb fuel
T1=F/T*100//percent
//RESULTS
printf('the percent of theoretical air equals=% f percent',T1)
