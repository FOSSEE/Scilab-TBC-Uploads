//Exa 6.15
clc;
clear;
close;
format('v',7);

//Given Data :
p_gauge=15;//bar
p_at=750;//mm of Hg
p_at=p_at/760*1.01325;//bar
p=p_gauge+p_at;//bar
ms=200;//Kg/hr
Cpw=4.187;//KJ/KgK
t1=80;//degree C
hf1=Cpw*t1;//KJ/Kg
hf2=858.6;//KJ/Kg(at p=16 bar)
hg2=2791.8;//KJ/Kg(at p=16 bar)
hfg2=1933.2;//KJ/Kg(at p=16 bar)
ts=201.37;//degree C
x2=0.8;//dry
h2=hf2+x2*hfg2;//KJ/Kg
q=ms*(h2-hf1);//KJ/hr
q=q/3600;//KJ/s
disp(q,"Heat transfer in boiler in KJ/s : ");
tsup=ts+t1;//degree C
Cp=2.2;//KJ/KgK
hsup3=hg2+Cp*(tsup-ts);//KJ/Kg
qsup=ms*(hsup3-h2)/3600;//KJ/s
disp(qsup,"Heat transfered in superheated steam in KJ/s : ");
Vg=0.1237;//m^3/Kg(at 16 bar)
Ts=201.37+273;//K
Tsup=tsup+273;//K
Vsup=Tsup/Ts*Vg;//m^3/Kg
density=1/Vsup;//Kg/m^3
disp(density,"Density of steam in Kg/m^3 : ");
//Steam table is used to get some data.
