printf('This is a spontaneous process.Since dS is independent of the manner in which the processes are conducted,\nthe above irreversible process can be considered to take place reversibly.')
T1=300;//initial temperature in kelvin//
T2=370;//final temperature in kelvin//
Cv=18;//molar heat capacity in cal per deg//
dSH2O=-Cv*2.303*log10(T2/T1);//change in entropy of H2O for temperature change between 300k to 370k//
printf('\nChange in entropy of H2O for temperature change between 300k to 370k=dSH2O=%feu',dSH2O);
dT=T2-T1;//change in temperature in kelvin//
dSthermostat=Cv*dT/T1;//change in entropy of thermostat in eu//
printf('\nChange in entropy of thermostat=dSthermostat=%feu',dSthermostat);
dS=dSH2O+dSthermostat;//net entropy chane in eu//
printf('\nNet entropy change=dS=%feu',dS);
