T=273;//temperature in kelvin//
P1=1;//pressure in atm//
M=28;//molecular weight of N2 in grams//
printf('For an ideal gas density=M*P/R*T.\nWhere M is molecular weight=28.\nTemperature being constant,if p1 and p2 are the densities at 1atm and 50atm respectively');
P2=1.25;//pressure in atm//
p1=50;//density at 1atm pressure//
p2=p1*P2;
printf('\nIf N2 gas behaved ideally at 273k,the ideal pressure Pideal is given by p2*R*T/M');
Pideal=p2*0.0821*T/M;
printf('\nIdeal pressure=Pideal=%fatm',Pideal);
f=p1^2/Pideal;
printf('\nFugacity of the N2gas=f=%fatm',f);
