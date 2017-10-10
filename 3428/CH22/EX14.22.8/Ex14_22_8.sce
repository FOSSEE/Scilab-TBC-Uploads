//Section-14,Example-1,Page no.-PC.61
//To find absolute viscosity of liquid.
clc;
d_s=8*10^3                  //kg/m^3
d_l=2*10^3                   //kg/m^3
r=10^-3                      //m
l=0.1                         //m
t=20                            //s
g=9.8                        //m/s^2
n_l=(2*g*r^2*(d_s-d_l))/(9*(l/t))
disp(n_l,'Absolute viscosity of liquid(Pa s)')
