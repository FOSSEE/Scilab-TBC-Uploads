//Exa 6.13
clc;
clear;
close;
format('v',6);

//Given Data :
p1=600;//KPa
p1=p1/100;//bar
T1=200;//degree C
Vsup1=0.352;//m^3/Kg(at 6 bar)
V1=Vsup1;//m^3/Kg
V2=V1;//m^3(system is at constant volume)
Vg2=V2;//m^3/Kg(For dry saturated)
Tsup1=153.3;//degree C
Tsup2=154.8;//degree C
vg1=0.34844;//m^3/Kg
vg2=0.36106;//m^3/Kg
ts2=Tsup1+(Tsup2-Tsup1)/(vg2-vg1)*(V1-vg1);//degree C
disp(ts2,"Temperature at which steam begins to condense in degree C : ");
pg1=5.2;//bar
pg2=5.4;//bar
p2=pg1+(pg2-pg1)/(Tsup2-Tsup1)*(ts2-Tsup1);//bar
disp(p2,"Pressure in bar is :");
//Some data is taken from steam table.
