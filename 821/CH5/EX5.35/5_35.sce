dS=21.0;//standard entropy change of benzene in cal per deg per mol//
Tb=353;//boiling point of benzene in kelvin//
Lv=dS*Tb;//latent heat of vapourization of benzene in cal per mol//
printf('Latent heat of vapourization of benzene=Lv=%fcal per mol',Lv);
T=300;//temperature in kelvin//
R=1.99;//universal gas constant//
P=10^(Lv*((1/Tb)-(1/T))/(2.303*R));//vapour pressure of benzene in atm//
PHg=P*760;//vapour pressure in mm of Hg//
printf('\nvapour pressure of benzene=P=%fatm',P);
printf('\nVapour pressure of benzene in mm of Hg=PHg=%fmm of Hg',PHg);
