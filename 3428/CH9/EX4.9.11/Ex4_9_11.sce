//Section-4,Example-1,Page no.-I.76
//To calculate the frequency at which radiation comes into resonance with proton spins.
clc;
B_0=12
y=26.75*10^7              //For proton(T^-1s^-1)
v=((y*B_0)/(2*%pi))
disp(v,'Required frequency(MHz)')
