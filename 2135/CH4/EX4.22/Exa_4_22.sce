//Exa 4.22
clc;
clear;
close;
format('v',7);

//Given Data :
Cpg=1.05;//KJ/KgK
t1=400;//degree centigrade
t2=360;//degree centigrade
T=30+273;//K
Q=Cpg*(t1-t2);//KJ/Kg
deltaSsurr=Q/T;//KJ/KgK
deltaSsystem=integrate('Cpg/T','T',t1+273,t2+273);//KJ/KgK
deltaSuniverse=deltaSsystem+deltaSsurr;//KJ/KgK
disp(deltaSuniverse,"Change in entropy of the universe in KJ/KgK :  ");
