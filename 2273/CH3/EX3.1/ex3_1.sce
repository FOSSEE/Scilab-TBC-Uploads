//calculate the weight of the conductor required
clear;
clc;
//soltion
//given
p=30*10^6;//watts// power to be transmitted
v=132*10^3;//volts//Line voltage
l=120*10^3;//m//length of 3 phase 3 wire line
n=0.9;//efficieny of the transmission line
pf=.8;//power factor
d1=1.78*10^-8;//ohm m//resistivity of copper
d2=2.6*10^-8;//ohm m//resistivity of aluminuim
D1=8.9*10^3;//(kg/m^3)//specific gravity of the copper
D2=2*10^3;//(kg/m^3)//specific gravity of the aluminium
printf("Weight of the conductor required \n\n");
printf("W=(3*d*l^2*P*D)/((1-n)*V^2*pf^2) kg\n\n\n");
W1=(3*d1*l^2*p*D1)/((1-n)*v^2*pf^2);
printf("Weight of coppper required= %d kg\n\n",round(W1/1000)*1000);
W2=(3*d2*l^2*p*D2)/((1-n)*v^2*pf^2);
printf("Weight of aluminuim required= %d kg\n\n\n",round(W2/100)*100);
