//Exa 6.33
clc;
clear;
close;
format('v',7);

//Given Data :
p1=20;//bar
Tsup3=360;//degree C
pb=0.08;//bar
m=1;//Kg
hf1=173.9;//KJ/Kg(from steam table)
h1=hf1;//KJ/Kg
wp=(p1-pb)/10;//KJ/Kg
h2=h1+wp;//KJ/Kg
h3=3160.62;//KJ/Kg(from steam table)
S3=6.994;//KJ/Kg
Sf4=0.593;//KJ/Kg(from steam table)
Sfg4=7.637;//KJ/Kg(from steam table)
S3=6.994;//KJ/Kg
//S3=S4=Sf4+x4*Sfg4
x4=(S3-Sf4)/Sfg4;//dryness
hf4=173.9;//KJ/Kg(from steam table)
hfg4=2403.2;//KJ/Kg(from steam table)
h4=hf4+x4*hfg4;//KJ/Kg
Ws=h3-h4-wp;//KJ/Kg
disp(Ws,"Net work done in KJ/Kg : ");
EtaR=Ws/(h3-h2)*100;//%
disp(EtaR,"Rankine efficiency in  % : ");
//Steam table is used to get some data.
