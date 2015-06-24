
//Ex11_1

clc;

//Given:
density1=1.000;// for water in CGS units
density2=0.789;// for ethanol in CGS units
density3=0.793;// for methanol in CGS units
l=6.023*10^23;// avogadro constant
ue=0.211;// electron absorption coefficent in barn per electron
// 1 b=10^(-24) cm^2


//solution: (a) Water

z1=10;// no. of electrons
a1=18;// atomic mass of water
uw=ue*z1;//molecule absorption coefficient
umw=(uw*l*10^-24)/a1;//mass absorption coefficient
ulw=umw*density1;// linear absorption coefficient

printf("\n The molecule absorption coefficient of water in b/molecule is = %f ",uw)
printf("\n The mass absorption coefficient of water in cm^2/g is = %f ",umw)
printf("\n The linear absorption coefficient of water in cm^-1 is = %f ",ulw)

//solution: (b) ethanol

z2=26;// no. of electrons
a2=46;// atomic mass of water
ueth=ue*z2;//molecule absorption coefficient
umeth=(ueth*l*10^-24)/a2;//mass absorption coefficient
uleth=umeth*density2;// linear absorption coefficient

printf("\n \n The molecule absorption coefficient of ethanol in b/molecule is = %f ",ueth)
printf("\n The mass absorption coefficient of ethanol in cm^2/g is = %f ",umeth)
printf("\n The linear absorption coefficient of ethanol in cm^-1 is = %f ",uleth)

//solution: (c) methanol

z3=18;// no. of electrons
a3=32;// atomic mass of water
umet=ue*z3;//molecule absorption coefficient
ummet=(umet*l*10^-24)/a3;//mass absorption coefficient
ulmet=ummet*density3;// linear absorption coefficient

printf("\n \n The molecule absorption coefficient of methanol in b/molecule is = %f ",umet)
printf("\n The mass absorption coefficient of methanol in cm^2/g is = %f ",ummet)
printf("\n The linear absorption coefficient of methanol in cm^-1 is = %f ",ulmet)
