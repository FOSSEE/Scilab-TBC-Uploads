clc
Pop = 1
disp("Pop= "+string(Pop)+"W/cm^2")//initializing value of amount of optical power
hw=1.43
disp("hw = "+string(hw)+"eV") //initializing value of energy of incident optical beam (h-bar omega)
a = 700
disp("a= "+string(a)+"cm^-1")//initializing value of absorption coefficient(alpha) 
W = 10^-3
disp("W= "+string(W)+"m")//inializing value of intrinsic region width
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
Phi_o = (Pop)/(hw*1.6*10^-19)
disp("The photon flux incident on the detector Phi_o = (Pop)/(hw*1.6*10^-19)= "+string(Phi_o)+"cm^-2s^-1")//calculation
JL=e*Phi_o*(1-exp(-(a*W)))
disp("The photocurrent density is ,JL=e*Phi_o*(1-exp(-(a*W))= "+string(JL)+"A/cm^2")//calculation

 

