T=300;//initial temperature in kelvin//
T1=692;//temperature in kelvin//
T2=1180;//temperature in kelvin//
T3=1500;//final temperature in kelvin//
Lf=1800;//Latent heat of fusion in cal per mol//
Tf=692;//temperature of fusion in kelvin//
Lv=27700;//Latent heat of vapourization in cal per mol//
Tv=1180;//temperature of vapourization in kelvin//
SH=0.092;//specific heat of Zn in cal per deg per gram//
w=65.38;//atomic weight of Zn//
Cv=w*SH;//molar heat capacity in cal per deg//
dS1=Cv*2.303*log10(T1/T);//change in entropy for temperature change between 300k to 692k//
printf('Change in entropy for temperature change between 300k to 692k=dS1=%feu',dS1);
dS2=Lf/Tf;//change in entropy in the process of fusion in eu//
printf('\nChange in entropy in the process of fusion=dS2=%feu',dS2);
dS3=Cv*2.303*log10(T2/T1);//change in entropy for temperature change between 692k to 1180k//
printf('\nChange in entropy for temperature change between 692k to 1180k=dS3=%feu',dS3);
dS4=Lv/Tv;//change in entropy in the process of vapourization in eu//
printf('\nChange in entropy in the process of vapourization=dS4=%feu',dS4);
dS5=Cv*2.303*log10(T3/T2);//change in entropy for temperature change between 1180k to 1500k//
printf('\nChange in entropy for temperature change between 1180k to 1500k=dS5=%feu',dS5);
dStotal=dS1+dS2+dS3+dS4+dS5;//total entropy change accompanying the process in eu//
printf('\nTotal entropy change accompanying the process=dStotal=%feu',dStotal);
