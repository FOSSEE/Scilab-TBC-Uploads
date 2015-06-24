//exa 1.2
clc;clear;close;
format('v',6);
LoadA=2.5*1000;//W
//12 midnight to 5am
d1A=100;//W
//5am to 6am
d2A=1.1*1000;//W
//6am to 8am
d3A=200;//W
//8am to 5pm
d4A=0;//W
//5pm to 12 midnight
d5A=500;//W
LoadB=3*1000;//W
//11 pm to 7am
d1B=0;//W
//7 am to 8 am
d2B=300;//W
//8 am to 10 am
d3B=1*1000;//W
//10 am to 6 pm
d4B=200;//W
//6 pm to 11 pm
d5B=600;//W
DEMAND_A=[d1A d2A d3A d4A d5A];//W
DEMAND_B=[d1B d2B d3B d4B d5B];//W
max_demand_A=max(DEMAND_A);//W
max_demand_B=max(DEMAND_B);//W
df_A=max_demand_A/LoadA;//demand factor
df_B=max_demand_B/LoadB;//demand factor
disp(df_B,df_A,"Demand factor of consumer A & B are");
gd_factor=(max_demand_A+max_demand_B)/max_demand_A;
disp(gd_factor,"Group diversity factor")
E_A=d1A*5+d2A*1+d3A*2+d4A*9+d5A*7;//Wh
E_B=d1B*8+d2B*1+d3B*2+d4B*8+d5B*5;//Wh
E_A=E_A/1000;//kWh
E_B=E_B/1000;//kWh
disp(E_B,E_A,"Energy consumed by A & B during 24 hours(kWh)")
Emax_A=max_demand_A*24/1000;//kWh
Emax_B=max_demand_B*24/1000;//kWh
 disp(Emax_B,Emax_A,"Maximum energy consumer A & B can consume during 24 hours(kWh)")
ratio_A=E_A/Emax_A;
format('v',7);
ratio_B=E_B/Emax_B;
disp(ratio_B,ratio_A,"Ratio of actual energy to maximum energy of consumer A & B") 
