clc
// Intialization of variables
// p2/rho + alpha2*V2^2/2 + gz2 = p1/rho + alpha1*V1^2/2 + gz1 - loss + w_sh
// Loss = W_sh - (p2-p1)/rho + alpha1*V1^2/2 - alpha2*V2^2/2
Pdif=0.1 //kPa
Mdot=0.1 //kg/min
PFm=0.14 //W  Power to fan motor
Mdot=Mdot/60
Pdif=Pdif*10^3
W_sh=PFm/Mdot
D1=60 //mm
D1=D1*10^-3
A1=%pi*D1^2/4
rho=1.23 //kg/m^3
V1=Mdot/(rho*A1)
D2=30 //mm
D2=D2*10^-3
A2=%pi*D2^2/4
V2=Mdot/(rho*A2)
// part (a)
alpha1=1
alpha2=1
Loss = W_sh - (Pdif)/rho + alpha1*V1^2/2 - alpha2*V2^2/2
printf('Assuming uniform velocity distributions, loss = %.3f N.m/kg',Loss)
//part (b)
alpha1=2
alpha2=1.08
Loss = W_sh - (Pdif)/rho + alpha1*V1^2/2 - alpha2*V2^2/2
printf('\n Assuming actual velocity distributions, loss = %.3f N.m/kg',Loss)
