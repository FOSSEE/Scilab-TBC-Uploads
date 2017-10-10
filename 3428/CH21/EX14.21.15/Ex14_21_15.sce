//Section-14,Example-2,Page no.-PC.30
//To calculate pressure exerted using ideal gas equation and Vanderwalls equation.
clc;
n=5                     //moles 
R=8.314                    //NmK^-1mol^-1
T=300                     //K
V=1*10^-3                  //m^3
P_1=((n*R*T)/V)
disp(P_1,'Required pressure using ideal gas equation(Nm^-2)')
a=0.1378                   //Nm^4mol^-2
b=0.0318*10^-3                          //m^3mol^-1
P_2=(((n*R*T)/(V-n*b))-((a*n^2)/(V^2)))
disp(P_2,'Required pressure using vanderwalls equation(Nm^-2)')
