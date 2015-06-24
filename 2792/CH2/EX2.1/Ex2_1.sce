clc
h=1.05*10^-34
disp("h = "+string(h)+"Js") //initializing value of reduced plancks constant or dirac constant or h-bar
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
E = 0.1*1.6*10^(-19)
disp("E= "+string(E)+"J")//initializing value of Energy of electron in conduction band
m=0.067*mo
disp("m = "+string(m)+"kg") //initializing value of appropriate mass in the conduction band for GaAs
k = sqrt(2*m*E)/h
disp("The k-value for an electron in the conduction band of GaAs is ,(k = sqrt(2*m*E)/h)= "+string(k)+"m^-1")//calculation
ko = 1.625*10^9
disp("The k-value for an electron in the free space is ,ko = "+string(ko)+"m^-1")// initializing k value of electron in the free space
disp("the two value are quite difference since the k value represent effective momentum")
