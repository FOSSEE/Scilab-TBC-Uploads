clc
h=6.6*10^-34    
disp("h = "+string(h)+"Js") // plancks constant
c = 3*10^8
disp("c = "+string(c)+"m/s") // velocity of light
E1 = 1.6*10^-19 
disp("E1 = "+string(E1)+"J") //initializing value of energy of photon
L1 = h*c/E1
disp("wavelengh of photon,(L(ph) = hc/E1)= "+string(L1)+" m")//calculation
E2 = 1.6*10^-19 
disp("E2 = "+string(E2)+"J") //initializing value of energy of electron
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
L2 = h/sqrt(2*mo*E2)
disp("wavelengh of electron,(L(e) = h/sqrt(2*mo*E2))= "+string(L2)+" m")//calculation
m=1/1824
disp("mo/m1 = "+string(m)) //initializing value of ratio of mass of electron to mass of neutron
L3 = L2*sqrt(m)
disp("wavelengh of neutron,L(n) = L2*sqrt(mo/m1)= "+string(L3)+" m")//calculation



