//Exa 6.29
clc;
clear;
close;
format('v',5);

//Given Data :
p1=1;//MPa
p2=100;//KPa
p1=p1*10^6/10^5;//bar
p2=p2*10^3/10^5;//bar
hf1=762.5;//KJ/Kg(from steam table)
hfg2=2013.6;//KJ/Kg(from steam table)
hg2=2675.5;//KJ/Kg(from steam table)
//hg2=hf1+x1*hfg2;//KJ/Kg
x1=(hg2-hf1)/hfg2;//
disp(x1,"Dryness fraction in the mains : ");
//Steam table is used to get some data.
