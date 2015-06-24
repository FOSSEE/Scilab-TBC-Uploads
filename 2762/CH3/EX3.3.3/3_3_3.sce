//Transport Processes and Seperation Process Principles
//Chapter 3
//Example 3.3-3
//Principles of Momentum Transfer and Applications
//given data
p1=137.9*1000;
p2=551.6*1000;
T1=26.7+273.2;
mmol=7.56/1000;
M=16;
mdot=mmol*M;
gam=1.31;
R=8314.3;
nWs1=(gam/(gam-1))*(R*T1/M)*((p2/p1)^((gam-1)/gam)-1);
n=80/100;
bkW1=(nWs1*mdot)/(n*1000);
mprintf("i) brake power= %f kW",bkW1)
nWs2=(R*T1/M)*log(p2/p1);
bkW2=(nWs2*mdot)/(n*1000);
mprintf("ii) brake power= %f kW",bkW2)
