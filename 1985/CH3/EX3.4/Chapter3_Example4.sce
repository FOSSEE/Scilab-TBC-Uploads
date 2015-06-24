
clc
clear

//INPUT
v=3*10^7;//Speed of the spaceship in m/s
t=1;//Time interval between the signals in s
c=3*10^8;//Speed of light in m/s

//CALCULATIONS
T=t/sqrt(1-(v^2/c^2))//Time interval between sucessive signals in s

//OUTPUT
mprintf('The time interval between sucessive signals as seen from the control room is %3.3f s',T)
