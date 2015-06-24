clc
Pop = 10
disp("Pop= "+string(Pop))//initializing value of amount of optical intensity
hw=1.65
disp("hw = "+string(hw)+"eV") //initializing value of energy of incident optical beam (h-bar omega)
alpha = 7*10^3
disp("alpha= "+string(alpha)+"cm^-1")//initializing value of absorption coefficient(alpha) for GaAs
T = 10^-9
disp("T= "+string(T)+"s")//inializing value of e-h recombination time
GL = (alpha*Pop)/(hw*1.6*10^-19)
disp("The rate of e-h pair production is ,GL = (a*Pop)/(hw)= "+string(GL)+"cm^-3s^-1")//calculation
dn = (GL*T)
disp("The excess carrier density is ,dn = (GL*T)= "+string(dn)+"cm^-3")//calculation

 

