clc
hw=1.43
disp("hw = "+string(hw)+"eV") //initializing value of energy of incident optical beam (h-bar omega)
alpha = 2.5*10^4
disp("alpha= "+string(alpha)+"cm^-1")//initializing value of absorption coefficient(alpha) for GaAs
amt = .9
disp("amt= "+string(amt))//initializing value of amount of light to be absorbed
L= -(1/alpha)*log(1-amt)
disp("The length of the material  is ,L= -(1/alpha)*ln(1-amt)= "+string(L)+"cm")//calculation

 

