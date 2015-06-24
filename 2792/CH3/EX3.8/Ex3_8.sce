clc
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
L =10^-4
disp("L= "+string(L)+"cm")//initializing value of length
Dn =220
disp("Dn= "+string(Dn)+"cm^2/s")//initializing value of electron diffusion coefficient
//n(x) = 10^16*exp(-(x/L)) cm^-3
//Derivative of n(x) for x =0 is  10^16/L
dn_by_dx =10^16/L
disp("dn_by_dx= "+string(dn_by_dx)+"cm^-4")//initializing value of derivative of n(x) for x=0
Jn_diff = e*Dn*dn_by_dx
disp("The diffusion current density is Jn_diff = e*Dn*dn_by_dx = "+string(Jn_diff)+"A/cm^2")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 
 
 

