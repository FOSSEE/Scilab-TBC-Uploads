M=18;//molecular weight of water in grams//
Dl=0.958;//density of water in liquid form in gram per cm^3//
Dv=5.98*10^-4;//density of water in vapour form in gram per cm^3//
MVl=M/Dl;//molar volume of water in liquid form in cm^3//
MVv=M/Dv;//molar volume of water in vapour form in cm^3//
L=540;//Latent heat of vapourization in cal per gram//
T=373;//temperature in kelvin//
dV=30.11;
dP=(L*M)/(T*dV);
printf('dP/dT=0.357atm per deg=28.55mm of Hg per deg');
dS=dP*dV;//change in entropy in cal per deg per mol//
printf('\nChange in entropy=dS=%fcal per deg per mol',dS);
