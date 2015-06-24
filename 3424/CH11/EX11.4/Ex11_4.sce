clc
//Initialization of variables
D=8 //in
omega=1200 //rpm
Cq=0.0625 //peak efficiency
Ch=0.19
Cp=0.014
g=32.2 // ft/s^2
rho=1.94 //slug/ft^3
D=D/12 //ft
omega=omega*2*%pi/60 // rad/s
Q=Cq*omega*D^3
Q=Q*7.48*60 // converting to gal/min
hp=Ch*omega^2*D^2/g
W=Cp*rho*omega^3*D^5
W=W/550 // converting to hp
printf('Peak efficiency = %.4f ',Cq)
printf('\n discharge = %d gpm',Q)
printf('\n Actual head rise = %.1f ft',hp)
printf('\n Shaft horse power = %.1f hp',W)
