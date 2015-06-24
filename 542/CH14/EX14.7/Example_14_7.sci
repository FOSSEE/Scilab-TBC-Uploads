clear;
clc;
printf("\n Example 14.7");
//(a) Maximum throughput

printf("\n (a) Maximum throughput");
t_bopt = (15*10^3)+(2/(7*10^(-5)))*(7*10^(-5)*0.2*15*10^3)^0.5;
printf("\n The boiling time to give maximum heat transfer and hence maximum throughput is %.1f ksecs ",t_bopt*10^(-3));

Qb = (2*40*40)*(7*10^(-5))*[((7*10^(-5)*2.81*10^4)+0.2)^0.5-0.2^0.5];
printf("\n The heat transferred during boiling is %.2f*10^7 kJ",Qb);
printf("\n the water vaporated = %.2f*10^4 kg",(4.67*10^(7)/2300)*10^(-4));
printf("\n Rate of evaporation during boiling = %.3f kg/secs",(2.03*10^4)/(2.81*10^4));
printf("\n Mean rate of evaporation during the cycle = %.3f kg/secs",2.03*10^(4)/[(2.8*10^4)+(15*10^3)]);
printf("\n cost = %.1f euro/cycle",((2.81*10^(4)*18)/1000)+600);


printf("\n (b) Minimum cost");
t_bopt1 = (600/0.018)+[2*(7*10^(-5)*0.2*600*0.018)^0.5]/(7*10^(-5)*0.018);
printf("\n The boiling time to give minimum cost is %.1f ksecs",t_bopt1*10^(-3));
Qb1 = [(2*40*40)/(7*10^(-5))]*[(7*10^(-5)*5.28*10^4 + 0.2)^0.5-0.2^0.5];
printf("\n The heat transferred during one boiling period is %.2f*10^7 kJ",Qb1*10^(-7))
printf("\n The water evaporated = %.2f*10^4 kg",Qb1/2300);
printf("\n Rate of evaporation = %.3f kg/secs",(3.03/5.28));
printf("\n Mean rate of evaporation during the cycle = %.2f kg/secs",(3.03*10^4)/[(5.28*10^4)+(15*10^3)]);
printf("\n cost of one cyce = %.1f euro",5.28*10^(4)*0.018+600);





