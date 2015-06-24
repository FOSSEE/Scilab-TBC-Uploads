//Exa 6.25
clc;
clear;
close;
format('v',7);

//Given Data :
p1=10;//bar
x1=0.9;//dryness
p2=1;//bar
hf1=762.6;//KJ/Kg(at 10bar)
hfg1=2013.6;//KJ/Kg(at 10bar)
h1=hf1+x1*hfg1;//KJ/Kg
h2=h1;//KJ/Kg
hg2=h2;//KJ/Kg
p2=0.075;//bar(from steam table)
disp(p2,"Pressure at exit in bar : ");
//Steam table is used to get some data.
