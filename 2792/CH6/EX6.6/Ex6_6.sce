clc
apsilen = 11.9*8.85*10^-14
disp("apsilen = "+string(apsilen)+"F/m") //initializing value of relative permitivity
phi_b = 0.66
disp("schottky barrier heights(in volts) = phi_b= "+string(phi_b)+"eV")//initializing value of schottky barrier heights(in volts)
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
m=0.34*mo
disp("m* = "+string(m)+"kg") //initializing value of density of state mass
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
h = 1.05*10^-34
disp("h= "+string(h)+"C")//initializing value of h_cut 
n1 = 10^18
disp("n= "+string(n1)+"cm^-3") //initializing value of silicon doping
n2 = 10^20
disp("n= "+string(n2)+"cm^-3") //initializing value of silicon doping
disp("Assume that the built in potential Vbi is same as barrier potential becouse of highly doped semiconductor")
W1 = (sqrt((2*apsilen*phi_b)/(e*n1)))/10^-8
disp("The depletion width is ,W(n=10^18) = sqrt((2*apsilen*Vbi)/(e*n)) = "+string(W1)+" Angstrom")//calculation
W2 = (sqrt((2*apsilen*phi_b)/(e*n2)))/10^-8
disp("The depletion width is ,W(n=10^20) = sqrt((2*apsilen*Vbi)/(e*n)) = "+string(W2)+" Angstrom")//calculation
F1 = phi_b/(W1*10^-8)
disp("The average field in depletion region for(n=10^18), F1 = phi_b/(W1/10^-8)=   "+string(F1)+"V/cm")
F2 = phi_b/(W2*10^-8)
disp("The average field in depletion region for(n=10^18), F2 = phi_b/(W2/10^-8)=   "+string(F2)+"V/cm")
F1 = F1/10^-2
F2 = F2/10^-2
T = exp(-(4*(2*m)^.5*(e*phi_b)^(3/2))/(3*e*F1*h))
disp("The tunneling current for(n=10^18),T = exp(-(4*(2*m)^.5*(e*phi_b)^(3/2))/(3*e*F1*h))="+string(T)+"V/cm")
T1 = exp(-(4*(2*m)^.5*(e*phi_b)^(3/2))/(3*e*F2*h))
disp("The tunneling current for(n=10^20), T1 = exp(-(4*(2*m)^.5*(e*phi_b)^(3/2))/(3*e*F2*h))="+string(T1)+"V/cm")

// in the textbook author has used approximate value for depletion width and hence it affect the value of all other answer
// NOTE: In the textbook author has used approximate answer for tunneling current



