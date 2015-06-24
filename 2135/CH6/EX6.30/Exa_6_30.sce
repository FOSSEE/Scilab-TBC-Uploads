//Exa 6.30
clc;
clear;
close;
format('v',7);

//Given Data :
p1=900;//KN/m^2
p2=900;//KN/m^2
p3=0.1013;//MN/m^2
p1=p1/10^2;//bar
p3=p2/10^2;//bar
p3=p3*10^6/10^5;//bar
Tsup3=115;//degree C
ms=1.8;//Kg
mw=0.16;//Kg
x1=ms/(ms+mw);//dryness
hf2=742.6;//KJ/Kg(from steam table)
hfg2=2029.5;//KJ/Kg(from steam table)
hg3=2676;//KJ/Kg(from steam table)
Ts3=100;//degree C
Cp=2;//KJ/KgK
//hf2+x2*hfg2=hg3+Cp*(Tsup3-Ts3);//KJ/Kg
x2=(hg3+Cp*(Tsup3-Ts3)-hf2)/hfg2;//KJ/Kg
x=x1*x2;//dryness
disp(x,"Dryness fraction of steam in mains : ");
//Steam table is used to get some data.
