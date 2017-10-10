//Section-14,Example-2,Page no.-PC.8
//To calculate the number of gas molecules left.
clc;
//PV=nRT
P=(10^-5*(1/760))                   //atm
V=(10^-3*(1/1000))                  //L
R=0.0821                          //LatmK^-1mol^-1
T=298                              //K
n=((P*V)/(R*T))                       //moles
N_a=6.023*10^23                          //1 mole gas=6.023*10^23 molecules
N=n*N_a
disp(N,'No. of gas molecules left')
