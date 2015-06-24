//Exa 6.32
clc;
clear;
close;
format('v',7);

//Given Data :
p1=1.5;//MPa
p1=p1*10^6/10^5;//bar
p_gauge=7;//bar
p_at=1;//bar
p2=p_gauge+p_at;//bar
p3=1;//bar
Tsup3=110;//degree C
mw=3.5;//Kg
ms=48;//Kg
Cp=2.1;//KJ/KgK
x1=ms/(ms+mw);//dryness
hf2=720.9;//KJ/Kg(from steam table)
hfg2=2059.3;//KJ/Kg(from steam table)
hg3=2675.5;//KJ/Kg(from steam table)
Ts3=99.63;//degree C
//hf2+x2*hfg2=hg3+Cp*(Tsup3-Ts3);//KJ/Kg
x2=(hg3+Cp*(Tsup3-Ts3)-hf2)/hfg2;//KJ/Kg
x=x1*x2;//dryness
disp(x,"Quality of steam in pipe line(Dryness fraction) : ");
//Steam table is used to get some data.
