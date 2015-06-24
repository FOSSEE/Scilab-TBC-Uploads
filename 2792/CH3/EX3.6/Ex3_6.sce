clc
v2=1.0*10^(7)
disp("v2 = "+string(v2)+"cm^(s)^-1") //initializing value of saturation velocity of GaAs device
F= 5000
disp("F = "+string(F)+"V(cm)^-1") //initializing value of average electric field in GaAs device
L= 2*10^(-4)
disp("L = "+string(L)+"cm") //initializing value of length of GaAs device 
u = 8000
disp("u = "+string(u)+"cm^2/Vs") //initializing value of low field mobility
v1 = u*F
disp("The average velocity of electrons is v = u*F = "+string(v1)+"cm/s")//calculation
Ttr1 = L/v1
disp("The transit time of electrons through the device is Ttr1 = L/v1= "+string(Ttr1)+"s")//calculation
Ttr2 = L/v2
disp("The transit time of electrons using saturation velocity through the device is Ttr2 = L/v2= "+string(Ttr2)+"s")//calculation
