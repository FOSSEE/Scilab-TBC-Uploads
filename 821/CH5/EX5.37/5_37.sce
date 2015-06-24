T1=373;//initial temperature in kelvin//
Lv=540*18;//latent heat of vapourization of water in cal per mol//
T2=423;//final temperature in kelvin//
R=1.99;//universal gas constant//
P=10^(-Lv*((1/T2)-(1/T1))/(2.303*R));//vapour pressure of water in atm//
printf('\npressure of water at which we can produce superheated steam=P=%fatm',P);
