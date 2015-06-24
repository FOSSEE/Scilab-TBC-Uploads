clc
v1=1.4*10^(4)
disp("v1 = "+string(v1)+"m(s)^-1") //initializing value of velocity of electrons in silion at 1kV/cm
v2=7*10^(4)
disp("v2 = "+string(v2)+"m(s)^-1") //initializing value of velocity of electrons in silion at 10kV/cm
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
F1= 10^5
disp("F1 = "+string(F1)+"V(m)^-1") //initializing value of applied electric field
F2= 10^6
disp("F2 = "+string(F2)+"V(m)^-1") //initializing value of applied electric field 
D1 = (v1*kbT*1.6*10^-19)/(e*F1)
disp("The diffusion coefficient is ,D(1kV/cm) = (v*kbT*1.6*10^-19)/(e*F) = "+string(D1)+"m^2/s")//calculation
D2 = (v2*kbT*1.6*10^-19)/(e*F2)
disp("The diffusion coefficient is ,D(10kV/cm) = (v*kbT*1.6*10^-19)/(e*F) = "+string(D2)+"m^2/s")//calculation
 

