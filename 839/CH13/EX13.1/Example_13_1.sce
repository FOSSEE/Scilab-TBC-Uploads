//clear//
clear;
clc;

//Example 13.1
//Given
Pa = 1; //[atm]
lambda = 139.7; //[Btu/lb]
L = 5; //[ft]
Tw = 175; //[F]
hi = 400; //[Btu/ft^2-h-F]
g = 4.17*10^8; //[ft/h^2]
Th = 270; //[F]
rho_f = 65.4; //[lb/ft^3]
kf = 0.083; //[Btu/ft-h-F], from Appendix 13
muf = 0.726; //[lb/ft-h], from Appendix 9
Do = 0.75/12; //[ft]
Di = Do-(2*0.065)/12; //[f]
//(a)
Twall = 205; //[F]
err = 50; 
h = 1.13;
while(err>10)
delta_To = Th-Twall;
//from Eq.(13.11)
Tf = Th-3*(Th-Twall)/4; //[F]
h = h*(kf^3*rho_f^2*g*lambda/(delta_To*L*muf))^(1/4); //[Btu/ft^2-h-F]
//Using Eq.(12.29)
delta_Ti = 1/hi/(1/hi+Di/(Do*h))*(Th-Tw); //[F]
Twall_new = Tw + delta_Ti; //[F]
err = Twall_new-Twall; //[F]
Twall = Twall_new; //[F]  
end
//To ckeck whether the flow is actually laminar 
Ao = 0.1963*L; //[ft^2], from Appendix 6
//the rate of heat transfer
q = h*Ao*(Th-Twall); //[Btu/h]
mdot = q/lambda; //[lb/ft-h]
disp('[Btu/ft^2-h-F]',h,'coefficient of chlorobenzene is')


//(b)
//For a horizontal condenser, Using Eq.(13.16)
N =6;
Twall = 215; //[F]
err = 50; 
h = 0.725;
muf = 0.68; //[lb/ft-h], from Appendix 6
while(err>10)
delta_To = Th-Twall;
//from Eq.(13.11)
Tf = Th-3*(Th-Twall)/4; //[F]
h = h*(kf^3*rho_f^2*g*lambda/(6*delta_To*Do*muf))^(1/4); //[Btu/ft^2-h-F]
//Using Eq.(12.29)
delta_Ti = 1/hi/(1/hi+Di/(Do*h))*(Th-Tw); //[F]
Twall_new = Tw + delta_Ti; //[F]
err = Twall_new-Twall; //[F]
Twall = Twall_new; //[F]  
end
disp('[Btu/ft^2-h-F]',h,'coefficient of chlorobenzene is')
