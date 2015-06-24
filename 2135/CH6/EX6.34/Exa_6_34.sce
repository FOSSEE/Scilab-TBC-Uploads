//Exa 6.34
clc;
clear;
close;
format('v',7);

//Given Data :
p1=80;//bar
Tsup3=350;//degree C
pb=712.5/760*1.01325;//bar
mdot=2;//Kg/s
//mdot=1;//Kg
h3=2964;//KJ/Kg(Molliers diagram)
h4=2184;//KJ/Kg(Molliers diagram)
WT=h3-h4;//KJ/Kg
WTdot=mdot*WT;//KW
disp(WTdot,"Total turbine work in KW : ");
wp=(p1-pb)/10;//KJ/Kg
hf1=411.35;//KJ/Kg(from steam table)
h1=hf1;//KJ/Kg
h2=h1+wp;//KJ/Kg
qi=h3-h2;//KJ/Kg
EtaR=(WT-wp)/qi*100;//%
disp(EtaR,"Rankine efficiency in  % : ");
//Steam table is used to get some data.
