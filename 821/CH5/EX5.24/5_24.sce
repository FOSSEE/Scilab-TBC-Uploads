T1=300;//initial temperature in kelvin//
T2=600;//final temperature in kelvin//
T3=373;//initial temperature in kelvin//
T4=746;//final temperature in kelvin//
Cv=6.09;//molar heat capacity in cal per deg//
dS2=Cv*2.303*log10(T2/T1);//change in entropy for temperature change between 300k to 600k//
printf('Change in entropy for temperature change between 300k to 600k=dS2=%fcal per deg',dS2);
dS4=Cv*2.303*log10(T4/T3);//change in entropy for temperature change between 373k to 746k//
printf('\nChange in entropy for temperature change between 373k to 746k=dS4=%fcal per deg',dS4);
