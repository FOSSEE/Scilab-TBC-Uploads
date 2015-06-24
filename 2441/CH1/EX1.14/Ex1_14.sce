//exa 1.14
clc;clear;close;
format('v',5);
//Transformer1
Lm=300;//kW
df_m=0.6;//demand factor
Lc=100;//kW//Commercial Load
df_c=0.5;//demand factor
//Transformer2
Lr2=500;//kW//Residential Load
df_Lr2=0.4;//demand factor
//Transformer3
Lr3=400;//kW
df_Lr3=0.5;//demand factor
//Diversity factors
df1=2.3;
df2=2.5;
df3=2;
DF=1.4;//Diversity factor between transformers
//Solution :
disp("Part(a)");
Lp1=(Lm*df_m+Lc*df_c)/df1;//kW//Peak load on Transformer1
disp(Lp1,"Peak load on Transformer1(kW)");
Lp2=Lr2*df_Lr2/df2;//kW//Peak load on Transformer2
disp(Lp2,"Peak load on Transformer2(kW)");
Lp3=Lr3*df_Lr3/df3;//kW//Peak load on Transformer3
disp(Lp3,"Peak load on Transformer3(kW)");
disp("Part(b)");
LpF=(Lp1+Lp2+Lp3)/DF;//Peak load on feeder
disp(LpF,"Peak load on feeder(kW)");
