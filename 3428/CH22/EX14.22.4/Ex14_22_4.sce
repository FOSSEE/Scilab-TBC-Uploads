//Section-14,Example-3,Page no.-PC.51
//To calculate the energy required.
clc;
y=73*10^-3
r_S=2*10^-6
r_B=2*10^-3
V_B=(4/3)*pi*(r_B)^3
V_S=(4/3)*pi*(r_S)^3
N=(V_B/V_S)
SA_S=4*%pi*(r_S)^2
SA_B=4*%pi*(r_B)^2
TSA_S=(10^9)*SA_S
SA_in=TSA_S-SA_B                    //Increase in surface area
E=y*(SA_in)
disp(E,'Energy required(J)')
