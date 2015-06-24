//Exa 6.23
clc;
clear;
close;
format('v',7);

//Given Data :
mdot=2;//Kg/s
p1=10;//bar
Tsup1=200;//degree C(from steam table)
p2=1;//bar
h1=2826.8;//KJ/Kg(at 10bar,200 degree C)
S1=6.692;//KJ/KgK(at 10bar,200 degree C)
ts2=99.63;//degree C(at 1bar)
Vg2=1.694;//m^3/Kg(at 1bar)
hf2=417.5;//KJ/Kg(at 1bar)
hfg2=2258;//KJ/Kg(at 1bar)
sf2=1.303;//KJ/KgK(at 1bar)
sfg2=6.057;//KJ/KgK(at 1bar)
//S1=sf2+x2*sfg2
x2=(S1-sf2)/sfg2;//dryness
V3=x2*Vg2;//m^3/Kg
t2=ts2;//degree C
S2=S1;//KJ/KgK
Qdot=0;//KJ
h2=hf2+x2*hfg2;//KJ/Kg
Wsf_dot=Qdot-mdot*((h2-h1));//KJ/Kg
disp(Wsf_dot,"Work output of turbine in KJ/s or W : ");
//Steam table is used to get some data.
