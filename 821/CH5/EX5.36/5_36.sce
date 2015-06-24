T2=373;//final temperature in kelvin//
Lv=540*18;//latent heat of vapourization of water in cal per mol//
P1=1/20;//initial pressure in atm//
P2=1;//final pressure in atm//
R=1.99;//universal gas constant//
T1=1/((1/T2)+(2.303*R*log10(P2/P1)/Lv));
printf('\noperating temperature of the reactor=T1=%fK',T1);
printf('\nHence the plant can be operated at a temperature of 303.500Kelvin or 30.500degrees \nsince at a temperature higher than this the liquid phase no longer exists.');
