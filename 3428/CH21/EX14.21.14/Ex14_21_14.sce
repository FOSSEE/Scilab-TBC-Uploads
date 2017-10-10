//Section-14,Example-1,Page no.-PC.29
//To calculate the pressure exerted using the Vanderwalls equation.
clc;
//(P+((a*n^2)/V^2)*(V-(n*b))=n*R*T
n=10                 //moles
R=8.314                        //Nmk^-1mol^-1
T=298                         //K
V=25*10^-3                        //m^3
b=0.037*10^-3                       //m^3mol^-1
a=0.417                       //Nm^4mol^-2
P=((n*R*T)/(V-(n*b))-((a*n^2)/(V^2)))
disp(P,'Required pressure(Nm^-2)')
