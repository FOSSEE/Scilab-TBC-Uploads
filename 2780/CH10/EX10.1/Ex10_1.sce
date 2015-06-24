clc
//to calculate permeability and susceptibility of the bar
phi=2.4*10^-5 //magnetic flux in weber
A=0.2*10^-4 //cross sectional area in m^2
B=phi/A //magnetic induction in N/Am
H=1200 //magnetising field in A/m
mu=B/H
disp("permeability is mu="+string(mu)+"N/A^2")
muo=4*%pi*10^-7 
chim=(mu/muo)-1
disp("susceptibility is chim="+string(chim)+"unitless")
//the answer is given wrong in the book (round off error) chim=737
