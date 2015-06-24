clc
clear
disp('example 4 4')
v=230;ec=2020;//voltage //energy consumption
i=40;pf=1;t=2;c=3.5;rc=1.8;mon=30;//current/power factor/time/cost/reamining cost/month
ecd=v*i*pf*t*mon/1000 //energy corresponding to maximum demand
cost=ecd*c
ren=ec-ecd
rcost=ren*rc
tmb=cost+rcost
at=tmb/ec
printf(" energy corresponding to maximum demand %dkWh \n cost of above energy Rs%d \n remaining energy %dkWh \n cost of reamaining energy Rs%.1f \n total monthly bill Rs.%.1f\n avarage tariff Rs%.3fper kWh",ecd,cost,ren,rcost,tmb,at)
