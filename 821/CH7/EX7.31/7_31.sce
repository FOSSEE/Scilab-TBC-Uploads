C=0.01;//concentration of Ca(NO3)2 solution//
Ksp=3.2*10^-11;//Solubility product of Fe(OH)3//
printf('CaF2 = Ca2+ + 2F-\n(Ca2+)(F-)^2 = 4*S^3 = 3.2*10^-11.');
printf('\nLet S1 be the solubility in 0.01M Ca(NO3)2\nCa(NO3)2 can be assumed to dissociate completely so that (Ca2+) from Ca(NO3)2 is 0.01M');
S=(Ksp/4)^0.33;//solubility in mol per litre//
printf('\nSolubility of CaF2 solution=S=%f=2.18*10^-4mol per litre',S);
printf('\nThe solubility product relationship should be true,irrespective of the source Ca2+\nCompared to the concentration of Ca2+ ions obtained from Ca(NO3)2,that of Ca2+ ions from CaF2 is negligible');
S1=sqrt(Ksp/0.04);//solubility in 0.01M ca(NO3)2//
printf('\nBut the F- ions are obtained only from CaF2 and so (F-)=2*S1\nKsp = 3.2*10^-11=(S1+0.01)*(2*S1)^2=(0.01)*(2*S1)^2 since S1 is negligible compared to 0.01');
printf('\nSolubility in 0.01M Ca(NO3)2 solution=S1=%f=2.83*10^-5',S1);
printf('\nThus the value of S1 can be seen to be less than that of S');
