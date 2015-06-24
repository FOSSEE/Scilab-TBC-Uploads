
clc
//initialisation of variables
clear
c=82.3//lbm
a=8.9//lbm
e=9.3//lbm
b=2*e//lbm
d=c/3.76//lbm
Af=(21.9+82.3)*(28.95)/(a*(12)+b*(1))//lbm air/lbm fuel
Carbon=(a*(12))/(a*(12)+b*(1))*100//percent
Hydrogen=(b*(1))/(a*(12)+b*(1))*100//percent
AFtheo=(13.5+50.8)*28.95/(a*(12)+(b*(1)))//lbm air/lbm fuel
//CALCULATIONS
T=Af/AFtheo*100//percent
//RESULTS
printf('Theoretical air requirement combustion equation=% f percent',T)
