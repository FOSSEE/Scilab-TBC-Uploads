//Transport Processes and Seperation Process Principles
//Chapter 4
//Example 4.7-3
//Principles of Steady State Heat Transfer
//given data
//si units
T1=394.3;
T2=366.5;
Tf=(T1+T2)/2;
del=30/1000;
rho=0.9295;
mu=2.21e-5;
k=0.03219;
Pr=0.693;
betaa=1/Tf;
L=0.6;
g=9.806;
Gr=(del^3)*(rho^2)*g*betaa*(T1-T2)/(mu*mu)
h=((k/del)*(0.20)*((Gr*Pr)^0.25))/((L/del)^(1/9));
A=0.6*0.4;//area= length*breadth
q=h*A*(T1-T2);
mprintf("heat transfer rate= %f W",q)
//calculation deviations may occur
