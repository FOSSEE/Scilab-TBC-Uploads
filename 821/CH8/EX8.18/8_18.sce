R=1.987;//universal gas constant//
T1=293;//initial temperature in kelvin//
T2=303;//Final temperature in kelvin//
K1=6.68*10^-3;//rate constant corresponding to T1 in per min//
K2=1.31*10^-2;//rate constant corresponding to T2 in per min//
E=(2.303*R*T1*T2*log10(K2/K1))/(T2-T1);//energy of activation in Kcal per mol//
printf('Energy of activation=E=%fcal per mol=11.88Kcal per mol',E);
