printf('CH4 being a nonlinear molecule has 3 translational,3 rotational and 9 vibrational degrees of freedom.');
printf('\nCv=3*0.5*R+3*0.5*R+9*R=12*R');
Cv=24;//Molar heat capacity in cal per degree per mol//
printf('\nActual Cv is 16cal per degree per mol');
R=2;
Cvr=16-R;//Real molar heat capapcity in cal per degree per mole//
printf('\nReal molar heat capapcity of a mole of CH4=Cvr=%fcal per degree per mole',Cvr);
printf('\nThe Real molar heat capacity at constant volume is 10cal less than the theoretical value.\nSince each vibrational degree of freedom can contribute 2cal,this means that 5 vibrational degrees\nare not contributing at the given temperature.');
