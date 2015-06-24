//Exa 6.35
clc;
clear;
close;
format('v',7);

//Given Data :
p1=30;//bar
Tsup3=350;//degree C
pb=0.5;//bar
h1=340.5;//KJ/Kg(from steam table, at 0.5 bar)
Vw=0.001;//m^3/Kg
wp=(p1-pb)*10^5*Vw/1000;//KJ/Kg
h2=h1+wp;//KJ/Kg
h3=2854.8;//KJ/Kg(from steam table, at 30 bar)
S3=6.286;//KJ/KgK
S4=S3;//KJ/KgK
Sf4=1.091;//KJ/KgK
Sfg4=6.503;//KJ/KgK
//S4=Sf4+x4*Sfg4
x4=(S4-Sf4)/Sfg4;//dryness
disp(x4,"Dryness fraction of steam entering in condenser : ");
hf4=340.5;//KJ/Kg(from steam table)
hfg4=2305.4;//KJ/Kg(from steam table)
h4=hf4+x4*hfg4;//KJ/Kg
q=h3-h2;//
disp(q,"Heat supplied to stem in boiler in KJ : ");
Ws=h3-h4-(h2-h1);//KJ/Kg
disp(Ws,"Work done in KJ/Kg : ");
steam_rate=3600/Ws;//KJ/KWh
disp(steam_rate,"Steam rate per in KJ/Kwh :  ");
EtaR=Ws/(h3-h2)*100;//%
disp(EtaR,"Rankine efficiency in  % : ");
//Steam table is used to get some data.
