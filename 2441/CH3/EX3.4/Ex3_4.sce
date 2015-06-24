//Exa 3.4
clc;clear;close;
format('v',7);
t1=14;//hour(working hour of hydro station)
t2=24;//hour(Working hour of steam station)
//Characteristics of units : 
//C=(5+8*Ps+0.05*Ps^2);//Rs./hour
//dW/dPh=30+0.05*Ph;//m^3/MW-sec
W=500*10^6;//m^3(Water Quantity used)
Ps=250;//MW(Load on steam station)
lambda=8+0.1*Ps;//Rs./MW-hour
//W=Ph*(30+0.05*Ph)*t1*3600;//
//0.05*Ph^2*t1*3600+Ph*30*t1*3600-W=0
Ph=poly(0,'Ph');
Ph=roots(0.05*Ph^2*t1*3600+Ph*30*t1*3600-W);//MW
Ph=Ph(2);//MW//Leaving negative root
disp(Ph,"Load on hydro plant(MW)");
r=lambda/(30+0.05*Ph);//Rs./hour/(m^3/sec)
disp(r,"Cost of water use(Rs./hour/(m^3/sec)) : ");
//Answer is slightly differ due to accuracy in calculations.
