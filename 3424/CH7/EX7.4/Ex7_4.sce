clc
// Intialization of variables
Dm = 0.02 // m
D = 0.1 //m
H = 0.3 // m
V = 50*(10^3)/3600 // m/s
Um = 0.001 // Kg/m.s
U = 1.79* 10^(-5) //Kg/m.s
d = 1.23 // Kg/m^3
dm = 998 //Kg/m^3
// Calculations 
Hm = Dm*H*1000/(D) //mm
Vm = Um*d*D*V/(U*dm*Dm)
// results
printf (" the model dimension is %.f mm",Hm)
printf (" \nthe velocity required is %.2f m/s",Vm)
