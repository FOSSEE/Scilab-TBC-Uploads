//Variable declaration
A=360*10**-4;    //area(m**2)
V=15;    //voltage(V)
C=6*10**-6;     //capacitance(farad)
epsilonr=8;
epsilon0=8.84*10**-12;

//Calculation
E=V*C/(epsilon0*epsilonr*A);     //field strength(V/m)
dm=epsilon0*(epsilonr-1)*V*A;    //total dipole moment(Cm)

//Result
printf('field strength is %0.3f *10**7 V/m\n',(E/10**7))
printf('total dipole moment is %0.3f *10**-12 Cm\n',(dm*10**12))