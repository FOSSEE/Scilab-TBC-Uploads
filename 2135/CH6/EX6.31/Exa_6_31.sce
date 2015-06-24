//Exa 6.31
clc;
clear;
close;
format('v',7);

//Given Data :
p1=1.5;//MPa
p1=p1*10^6/10^5;//bar
p2=p1;//bar
p3=0.1;//MPa
p3=p3*10^6/10^5;//bar
Tsup3=110;//degree C
Vw=0.15;//litres
Vw=0.15*10^-3;//m^3 at 70 degree C
ms=3.24;//Kg
Vf=0.001023;//m^3/Kg
mw=Vw/Vf;//Kg
x1=ms/(ms+mw);//dryness
hf2=844.7;//KJ/Kg(from steam table)
hfg2=1945.2;//KJ/Kg(from steam table)
hg3=2675;//KJ/Kg(from steam table)
Ts3=99.63;//degree C
Cp=2;//KJ/KgK
//hf2+x2*hfg2=hg3+Cp*(Tsup3-Ts3);//KJ/Kg
x2=(hg3+Cp*(Tsup3-Ts3)-hf2)/hfg2;//KJ/Kg
x=x1*x2;//dryness
disp(x,"Quality of steam in pipe line(Dryness fraction) : ");
//Steam table is used to get some data.
