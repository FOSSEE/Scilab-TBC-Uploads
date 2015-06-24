clc
no=1.5*10^10
disp("no = "+string(no)) //initializing value of electron hole per cm^3.
n=2*10^16
disp("n= "+string(n)) //initializing value of number of electrons per cm^3.
un=1200
disp("un = "+string(un)) //initializing value of mobility of n-type carrier. 
up=500
disp("up = "+string(up)) ////initializing value of mobility of p-type carrier. 
e=1.6*10^-19
disp("e = "+string(e)+" columb") //initializing value of charge of electron.
p=(1/(2*e*no*(sqrt(un*up))))
disp("resistivity ,p=(1/(2*e*no*(sqrt(un/up))))= "+string(p)+" ohm")//calculation
sigmamin=(1/p)
disp("conductivity ,s=(1/p))= "+string(sigmamin)+" S/cm")//calculation
sigma=e*no*(un+up)
disp("intrinsic conductivity ,sigma=e*no*(un+up))= "+string(sigma)+" S/cm")//calculation
