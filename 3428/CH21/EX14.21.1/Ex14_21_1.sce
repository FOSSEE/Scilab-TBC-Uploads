//Section-14,Example-1,Page no.-PC.7
//To find the temperature at which  pressure of gas will reach the bursting  value.
clc;
//PV=nRT
P=10                   //atm
V=(10^-3)*(1/10^-3)              //L
n=((5*10^-3)/30)                  //mol
R=0.0821          //(LatmK^-1mol^-1)
T=((P*V)/(n*R))
disp(T,'Required temperature(K)')
//Answer given in the book T=730.9 K is wrong.
