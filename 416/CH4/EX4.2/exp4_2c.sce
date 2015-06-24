clc
clear
disp('example 4 2')
l=100;//connected load
md=80;//maximum demand
wt=0.6; //working time
c=6000; //constant cost
t=700; //cost on per kW
re=1.8;//rate
ec=l*wt*8760//electricity consumption per year
teb=c+md*t+re*ec //total electricity bill per year
printf(" energy consumption %dkWh \n total electricity bill per year Rs%d",ec,teb)