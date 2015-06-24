//Chapter 29
clc
//Example 3
//given
No=3*10^16 //no.of radioactive nuclei present at t=0
t_half=1.6*10^3 //years
T_half=t_half*3.16*10^7 //in sec
d=0.693/T_half
R_o=d*No // decays/s
Ci=3.7*10^10
Ro=R_o/Ci
disp(Ro,"Activity or decay rate at t=0 in Ci is")

