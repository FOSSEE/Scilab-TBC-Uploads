//Exa 4.7
clc;
clear;
close;
format('v',7);

//Given Data :
mi=0.5;//Kg
Ti=-10+273;//K
Cpi=2;//KJ/KgK
Cpw=4.2;//KJ/KgK
Li=334;//KJ/Kg
mc=5;//Kg
Tc=80+273;//K
Cpc=0.5;//KJ/KgK
T0=0+273;//K
//mi*[Cpi*(T0-Ti)+Li+Cpw*(T-T0)]=mc*Cpc*(Tc-T)
T=(mc*Cpc*Tc-mi*Cpi*(T0-Ti)-mi*Li+mi*Cpw*T0)/(mi*Cpw+mc*Cpc);//K
deltaSi=mi*Cpi*log(T0/Ti)+Li/T0+mi*Cpw*log(T/T0);//KJ/K
disp(deltaSi,":Entropy chane of Ice in KJ/K : ");
deltaSc=mc*Cpc*log(T/Tc);//KJ/K
disp(deltaSc,":Entropy chane of Copper in KJ/K : ");
deltaSsurr=0;//No heat transfer between system & Surrounding
deltaSuniverse=deltaSi+deltaSc+deltaSsurr;//KJ/K
disp(deltaSuniverse,":Entropy chane of universe in KJ/K : ");
