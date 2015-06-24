clc
//Chapter1
//Ex_1.4
//Given
k=1.38*10^-23 //in J/K
m=9.1*10^-31 // in Kg
T=300 // in Kelvin
v_av=sqrt(8*k*T/(%pi*m))
disp(v_av*10^-3,"Mean speed for a gas of non interacting electrons in Km is ")
v=sqrt(2*k*T/(m))
disp(v*10^-3,"Most probable speed for a gas of non interacting electrons in Km is")
v_rms=sqrt(3*k*T/(m))
disp(v_rms*10^-3,"rms velocity for a gas of non interacting electrons in Km is")
