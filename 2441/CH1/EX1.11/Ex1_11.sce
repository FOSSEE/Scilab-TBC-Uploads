//exa 1.11
clc;clear;close;
format('v',7);
L1=10000;//kW
L2=6000;//kW
L3=8000;//kW
L4=7000;//kW
df=1.5;//diversity factor
LF=65;//%//Load Factor
Dinc=60;//%//Increase in maximum demand
L=L1+L2+L3+L4;//kW//Sum 
L=L/1000;//MW
Dmax=L/df;//MW
disp(Dmax,"Maximum demand on station(MWh)");
E=Dmax*365*24*LF/100;//MWh//Annual Energy
format('v',9);
disp(E,"Annual Energy Supplied(MWh)");
Din_max=Dinc/100*Dmax;//MW
format('v',7);
C=Dmax+Din_max;//MW
disp(C,"Installed Capacity(MW)")
