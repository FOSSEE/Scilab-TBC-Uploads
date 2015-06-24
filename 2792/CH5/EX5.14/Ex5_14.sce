clc
e = 1.6*10^-19
disp("e= "+string(e)+"C")//initializing value of charge of electron
I= 1*10^-3
disp("I= "+string(I)+"A") //initializing value of forward current
kbT = 0.026
disp("kbT = "+string(kbT)+"eV") //initializing value of kbT at 300K
Tp = 10^-6
disp("Tp= "+string(Tp)+"s")//inializing value of minority carrier lifetime
Gs = (I)/(kbT)
disp("The diode conductance is Gs = (e*I)/(kbT)= "+string(Gs)+"A/V")//calculation
Cdiff = (I*Tp)/(2*kbT)
disp("The diffusion capacitance is Cdiff = (e*I*Tp)/(2*kbT)= "+string(Cdiff)+" F")//calculation
// The diffusion capacitance is much larger than junction capacitance hence neglecting junction capacitance
Y = Gs+(%i*2*%pi*10^6*Cdiff)
disp("The admittance of the diode is Y = Gs+%i(2*%pi*10^6*Cdiff)= "+string(Y)+" A/V")//calculation
// Note : due to different precisions taken by me and the author ... my answer differ 
