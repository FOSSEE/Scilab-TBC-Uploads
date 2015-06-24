//Exa 6.18
clc;
clear;
close;
format('v',7);

//Given Data :
V1=0.9;//m^3
p1=8;//bar
x1=0.9;//dry
p2=4;//bar
Vg1=0.24;//m^3/Kg(at 8 bar)
hf1=720.9;//KJ/Kg(at p=8 bar)
hfg1=2046.5;//KJ/Kg(at p=8 bar)
Vg2=0.462;//m^3/Kg(at 4 bar)
hf2=604.7;//KJ/Kg(at p=4 bar)
hfg2=2132.9;//KJ/Kg(at p=4 bar)
//h1=h2 : hf1+x1*hfg1=hf2+x2*hfg2
x2=((hf1+x1*hfg1)-hf2)/hfg2;//dry
disp(x2,"Dryness fraction of steam : ");
m1=V1/x1/Vg1;//Kg
V2=V1;//m^3
m2=V2/x2/Vg2;//Kg
m=m1-m2;//Kg
disp(m,"Mass of steam blown off in Kg : ");
//Steam table is used to get some data.
