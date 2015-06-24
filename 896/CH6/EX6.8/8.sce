clc
//Example 6.8
//Calculate the pump power required
q=200//gal/min
rho=62.3//lbm/ft^3
//1 ft^3 = 7.48 gal
m=(q/60)*rho/7.48//lbm/s
dx=2000//ft
dp=3.87//psi/100ft
F=(dp/100)*dx/rho*32.2*144//ft
//1 hp = 550 lbf.ft/s
Po=F*m/550//hp
printf("The pump power required is %f hp",Po);