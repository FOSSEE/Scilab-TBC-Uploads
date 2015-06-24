//Exa 6.24
clc;
clear;
close;
format('v',7);

//Given Data :
p1=7;//bar
x1=0.8;//dryness
p2=1;//bar
hf1=697;//KJ/Kg(at 7bar)
hfg1=2064.9;//KJ/Kg(at 7bar)
hf2=417.5;//KJ/Kg(at 1bar)
hfg2=2258;//KJ/Kg(at 1bar)
//hf1+x1*hfg1=hf2+x2*hfg2
x2=(hf1+x1*hfg1-hf2)/hfg2;//dryness
disp(x2,"Final conditio of steam(dryness) : ");
sf2=1.303;//KJ/Kg(at 1bar)
sfg2=6.057;//KJ/Kg(at 1bar)
sf1=1.992;//KJ/Kg(at 7bar)
sfg1=4.713;//KJ/Kg(at 7bar)
deltaS=(sf2+x2*sfg2)-(sf1+x1*sfg1)
disp(deltaS,"Change in entropy in KJ/KgK : ");
//Steam table is used to get some data.
