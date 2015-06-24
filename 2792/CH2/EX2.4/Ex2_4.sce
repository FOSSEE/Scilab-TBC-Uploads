clc
h=1.05*10^-34
disp("h = "+string(h)+"Js") //initializing value of reduced plancks constant or dirac constant or h-bar
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
m = 0.067*mo
disp("m = "+string(m)+"kg") //initializing value of heavy hole mass
E = 0.5*1.6*10^-19
disp("E = "+string(E)+"J") //initializing value of electron energy measured from the bandedge
//  Effective momentum of electron in the conduction band of GaAs
hk = sqrt(2*m*E)
disp("The effetive momentum of an electron in the conduction band of GaAs is ,hk = sqrt(2*m*E)= "+string(hk)+"m^-1")//calculation
k = hk/h
disp("the corresponding wavevector is,k = hk/h = "+string(k)+"m^-1") //calculation
//Effective momentum of free electron in the space with same energy
p = sqrt(2*mo*E)
disp("The effetive momentum of an electron in the space is ,p = sqrt(2*mo*E)= "+string(p)+"kgms^-1")//calculation

