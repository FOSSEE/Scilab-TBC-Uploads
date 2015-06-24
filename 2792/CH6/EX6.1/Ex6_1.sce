clc
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
n = 10^22
disp("n = "+string(n)+"cm^-3") //initializing value of electron density in current flow
rho = 2.7*10^(-6)
disp("rho = "+string(rho)+" ohm-cm") //initializing value of resistiviy of aluminium at room temperature
disp("using following terms   J = Current density ; s(sigma) = 1/rho = conductivity ; F = Electric field ")
disp("Using relations  J = s*F = n*e*v = n*e*u*F ; we get")
mu_ = 1/(n*e*rho)
disp("The mobility of electrons in aluminium is ,mu_ = 1/(n*e*r) = "+string(mu_)+" cm^2(Vs)^-1")//calculation
//The answer given in the book is 240.4 cm^2/Vs which is wrong
