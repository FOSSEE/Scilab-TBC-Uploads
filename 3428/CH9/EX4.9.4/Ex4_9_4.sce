//Section-4,Example-1,Page no.-I.14
//To calculate the interneuclear distance of CN molecule.
clc;
B=3.8/2
h=6.626*10^-34
c=3*10^10
I=h/(8*%pi^2*B*c)
m_C=12
m_N=14
N_A=6.023*10^23
mu=((m_C*m_N)/((m_C+m_N)*N_A))*10^-3       //Reduced mass(kg)
r=sqrt(I/mu)*10^12
disp(r,'Interneuclear distance of CN molecule(pm)')
