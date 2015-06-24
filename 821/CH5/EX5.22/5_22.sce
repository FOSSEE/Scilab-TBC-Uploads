T1=300;//initial temperature in kelvin//
T2=400;//final temperature in kelvin//
P1=2;//initial pressure in atm//
P2=10;//final pressure in atm//
R=1.99;
n=5;//no.of moles//
Cv=6.95;
dS=n*Cv*2.303*log10(T2/T1)-n*2.303*R*log10(P2/P1);
printf('Change in entropy=dS=%feu',dS);
