//Section-14,Example-3,Page no.-PC.51
//To calculate the energy required.
clc;
y=73*10^-3                 //Nm^-1
r_S=2*10^-6                  //m
r_B=2*10^-3                   //m
V_B=(4/3)*%pi*(r_B)^3                 //m^3
V_S=(4/3)*%pi*(r_S)^3                   //m^3
N=(V_B/V_S)
SA_S=4*%pi*(r_S)^2                  //m^2
SA_B=4*%pi*(r_B)^2                    //m^2
TSA_S=(10^9)*SA_S                          //m^2
SA_in=TSA_S-SA_B                    //Increase in surface area(m^2)
E=y*(SA_in)                        //J
disp(E,'Energy required(J)')
