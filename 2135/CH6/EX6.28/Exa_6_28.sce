//Exa 6.28
clc;
clear;
close;
format('v',7);

//Given Data :
p1=15;//bar
p2=15;//bar
p3=1;//bar
Tsup3=150;//degree C
mw=0.2;//Kg/min
ms=10;//Kg/min
x1=ms/(ms+mw);//dryness
disp(x1,"Dryness factor of steam : ");
hf2=844.7;//KJ/Kg(from steam table,at 15 bar)
hfg2=1945.2;//KJ/Kg(from steam table,at 15 bar)
hsup3=2776.3;//KJ/Kg(from steam table,at 15 bar)
//hsup3=hf2+x2*hfg2;//KJ/Kg
x2=(hsup3-hf2)/hfg2;//KJ/Kg
x=x1*x2;//dryness
disp(x,"Dryness fraction in the mains : ");
//Steam table is used to get some data.
