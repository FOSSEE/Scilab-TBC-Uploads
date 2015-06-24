T1=27;//initial temperature in C//
T2=177;//final temperature in C//
printf('NH3 being a nonlinear molecule has 3 translational,3 rotational and 6 vibrational degrees of freedom.');
printf('\nCv=3*0.5*R+3*0.5*R+6*R=9*R');
Cv=18;//Molar heat capacity in cal per deg per mol//
dU=Cv*(T2-T1);//Change in internal energy of a mole in cal per mole//
printf('\nChange in internal energy of a mole of NH3=dU=%fcal per mole',dU);
printf('\nThe actual increase in energy may not be 2700cal per mol\nbecause at the given temperature,none or only some of the vibrational degrees of freedom may be contributing to the total energy.');//answer should come as 2700 not 2400,it was just misprinted//
