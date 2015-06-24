//Exa 6.22
clc;
clear;
close;
format('v',7);

//Given Data :
p1=160;//bar
Tsup1=550;//degree C(from steam table)
q=0;//adiabatic process
deltaS=0.1;//KJ/KgK
p2=0.2;//bar
t11=500;//degree C
t22=600;//degree C
h11=3297.1;//KJ/Kg(at 4bar,500 degree C)
h22=3571;//KJ/Kg(at 4bar,600 degree C)
h1=h11+(h22-h11)/(t22-t11)*(Tsup1-t11);//KJ/Kg
s11=6.305;//KJ/KgK(at 4bar,500 degree C)
s22=6.639;//KJ/KgK(at 4bar,600 degree C)
s1=s11+(s22-s11)/(t22-t11)*(Tsup1-t11);//KJ/KgK
s2=deltaS+s1;//KJ/KgK
hf2=251.4;//KJ/Kg(at 0.2 bar)
hfg2=2358.2;//KJ/Kg(at 0.2 bar)
sf2=0.832;//KJ/KgK(at 0.2 bar)
sfg2=7.077;//KJ/KgK(at 0.2 bar)
//s2=sf2+x2*sfg2
x2=(s2-sf2)/sfg2;//dryness
h2=hf2+x2*hfg2;//KJ
Wsf_a=h1-h2;//KJ/Kg
disp(Wsf_a,"Actual Work of expansion in KJ : ");
//Steam table is used to get some data.
