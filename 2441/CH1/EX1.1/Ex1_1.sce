//exa 1.1
clc;clear;close;
format('v',6);
B=100;//W(8Bulb)
F=60;//W(2Fan)
L=100;//W(2Light)
LoadConnected=8*B+2*F+2*L;//W
disp(LoadConnected,"(a) Connected Load (W)")
//12 midnight to 5am
demand1=1*F;//W
//5am to 7am
demand2=2*F+1*L;//W
//7am to 9am
demand3=0;//W
//9am to 6pm
demand4=2*F;//W
//6pm to midnight
demand5=2*F+4*B;//W
DEMAND=[demand1 demand2 demand3 demand4 demand5]
max_demand=max(DEMAND);
disp(max_demand,"(b) Maximum demand (W)");
df=max_demand/LoadConnected;//demand factor
disp(df,"(c) Demand factor");
E=demand1*5+demand2*2+demand3*2+demand4*9+demand5*6;//Wh
E=E/1000;//kWh
disp(E,"(d) Energy consumed during 24 hours(kWh)")
Edash=LoadConnected*24/1000;//kWh
 disp(Edash,"(e) Energy consumed during 24 hours if all devices are used(kWh)")
