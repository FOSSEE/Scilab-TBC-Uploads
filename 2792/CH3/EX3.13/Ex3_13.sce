clc
mo = 9.1*10^-31
disp("mo = "+string(mo)+"kg") //initializing value of mass of electron
m = 0.27*mo
disp("m* = "+string(m)+"kg") //initializing value of effective mass of silicon
kb = (1.38*10^-23)
disp("kb = "+string(kb)+"J/K") //initializing value of boltzman constant
T1 = 300
disp("T1 = "+string(T1)+"K") //initializing value of temperature
T2 = 77
disp("T2 = "+string(T2)+"K") //initializing value of temperature
vth1=(sqrt((3*kb*T1)/(m)))*100
disp("The thermal velocity of the electron at 300K is ,vth(300K)=sqrt((3*kb*T)/(m*)) = "+string(vth1)+"cms^-1")//calculation
vth2=(sqrt((3*kb*T2)/(m)))*100
disp("The thermal velocity of the electron at 77K is ,vth(77K)=sqrt((3*kb*T)/(m*)) = "+string(vth2)+"cms^-1")//calculation
sigma=10^(-14)
disp("sigma = "+string(sigma)+"cm^2") //initializing value of cross-section
Nt = 10^15
disp("Nt= "+string(Nt)+"cm^-3")//initializing value of impurity density
Tnr1 = 1/(sigma*Nt*vth1)
disp("The electron trapping time is ,Tnr1 = 1/(sigma*Nt*vth1) = "+string(Tnr1)+"s")//calculation
Tnr2 = 1/(sigma*Nt*vth2)
disp("The electron trapping time is ,Tnr2 = 1/(sigma*Nt*vth2) = "+string(Tnr2)+"s")//calculation
//NOTE: in the Textbook the author has taken the approximated value for Vth thermal velocity\
// NOTE: these approximated values of velocity affects the value of electron trapping time
