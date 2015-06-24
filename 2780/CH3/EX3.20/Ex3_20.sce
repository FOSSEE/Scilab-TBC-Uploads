clc
//to calculate grating element
//grating equation for principal maxima is given by (e+d)*sintheta=n*lambda
//let nth order spectrum for yellow line (lambda=6000 angstrom) coincide with (n+1)th order spectrum for blue line (lambda=4800 angstrom) 
//(e+d)*sintheta=n*6000*10^-8..eq(1)
//(e+d)*sintheta=(n+1)*4800*10^-8.....eq(2)
//from eq(1) and eq(2),we get n=4
n=4
lambda=6000*10^-8      //wavelength in cm
sintheta=3/4   
eplusd=n*lambda/sintheta
disp("grating element is eplusd="+string(eplusd)+"cm")
