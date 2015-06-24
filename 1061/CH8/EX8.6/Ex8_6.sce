//Ex:8.6
clc;
clear;
close;
pc=150*10^-6;// coupling power W
p=20*10^-3*2;// optical power W
npc=pc/p;// overall efficiency
Npc=npc*100;// percentage of overall efficiency
printf("The percentage of overall efficiency =%f %%", Npc);