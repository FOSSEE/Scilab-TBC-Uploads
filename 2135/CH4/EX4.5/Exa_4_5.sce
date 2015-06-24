//Exa 4.5
clc;
clear;
close;
format('v',8);

//Given Data :
mc=0.5;//Kg
Tc=100+273;//K
Cpc=0.393;//KJ/KgK
Tw=10+273;//K
Cpw=4.2;//KJ/KgK
Q=integrate('mc*Cpc','T',Tc,Tw);//KJ
deltaSc=integrate('mc*Cpc/T','T',Tc,Tw);//KJ/K
deltaSw=abs(Q)/Tw;//KJ/K
deltaSuniverse=deltaSc+deltaSw;//Kj/K
disp(deltaSuniverse,"Part (i) Chane in entropy in KJ/K : ");
T1=383;//K
T2=283;//K
T=(T1+T2)/2;//K
deltaSuniverse=mc*Cpc*[integrate('1/T','T',T1,T)+integrate('1/T','T',T2,T)];//KJ/K
disp(deltaSuniverse,"Part (ii) Chane in entropy in KJ/K : ");
