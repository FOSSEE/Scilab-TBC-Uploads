//Section-14,Example-3,Page no.-PC.30
//To calculate volume occupied according to Vanderwalls equation and Boyle's temperature.
clc;
//(P+(a-V^2))*(V-b)=R*T
v_1=(2520+sqrt(((2520)^2)-4*(10^6)*0.2279))/(2*10^6)
v_2=(2520-sqrt(((2520)^2)-4*(10^6)*0.2279))/(2*10^6)
R=8.314                    //NmK^-1mol^-1
T=298                          //K
P=10^6                         //N/m^2
V=((R*T)/P)
disp(V,'Volume occupied according to Vanderwalls equation(m^3)')
a=0.2279                       //Nm^4mol^-2
b=0.0428*10^-3                         //m^3mol^-1
T_B=(a/(R*b))
disp(T_B,'Boyle`s temperature for methane gas(K)')
