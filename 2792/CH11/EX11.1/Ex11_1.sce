clc
hw=1.7
disp("hw = "+string(hw)+"eV") //initializing value of energy of incident optical beam (h-bar omega)
Eg = 1.43
disp("Eg= "+string(Eg)+"eV")//initializing value of Energy of band gap
alpha= 4.21*10^4*((hw-Eg)/(hw))
disp("The absorption coefficient(alpha) for GaAs is ,alpha= 4.21*10^4*((hw-Eg)/(hw))= "+string(alpha)+"cm^-1")//calculation

 

