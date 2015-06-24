clc
//to calculate conduction current and displacement current densities 
sigma=10^-3        //conductivity in mhos/m
E=4*10^-6        //where E=4*10^-6*sin(9*10^9t) v/m
J=sigma*E
disp("conduction current density is J="+string(J)+"sin(9*10^9t)    A/m")
epsilon0=8.85*10^-12            //permittivity in free space
epsilonr=2.45                    //relative permittivity
//formula is epsilon0*epsilonr*(delE/delt)
//delE/delt=4*10^-6*9*10^9*cos(9*10^9*t)
Jd=epsilon0*epsilonr*4*10^-6*9*10^9
disp("displacement current density is Jd="+string(Jd)+"cos(9*10^9*t)  A/m^2")
