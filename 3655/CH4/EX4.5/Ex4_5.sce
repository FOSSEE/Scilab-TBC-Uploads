// Example 4.5
// Computation for position of the intrinsic fermi level and the position of the fermi level with respect to the top of the valance band for case(A),the intrinsic carrier concentration of the semiconductor for case(B), effective masses mn & mp of electrons and holes respectively for case(C)//
// Page no.95

clc;
clear;
close;

//Given data ;
kT=0.0259;
NC=1.5*10^18;//NC in cm^-3
NC1=1.5*10^24;//NC1 in m^-3
NV=1.3*10^19;//NV in cm^-3
NV1=1.3*10^25;//NV1 in m^-3
EG=1.43;
T=300;

//.................................(A)......................................//

//Calculation for position of the intrinsic fermi level with respect to the centre of the bandgap//
P1=-(kT/2)*log(NC/NV);//P1=(EF-E_midgap)

//Thus fermi level is located at 0.028eV abov the center of the bandgap//

//Calculation for position of the fermi level with respect to the top of the valance band Ev//
P2=(EG/2)-((kT/2)*log(NC/NV));//P2=EF-EV

//Hence the fermi level is located at 0.743eV above the valance band Ev//

//Calculation for position of the fermi level with respect to the conduction band edge EC//
P3=-(EG/2)-(kT/2)*log(NC/NV);//P3=EF-EC

//Hence the fermi level is located at 0.687eV below EC//

//.................................(B)......................................//

//Calculation for intrinsic carrier concentration of the semiconductor//
ni=sqrt(NC*NV*exp(-EG/kT));

//.................................(C)......................................//

//Calculation for effective mass of electrons mn//
mn=((NC1/(4.82*10^21))^(2/3))*(1/T);

//mn in Kg:
mn1=mn*9.1*10^-31;

//Calculation for effective mass of holes mp//
mp=((NV1/(4.82*10^21))^(2/3))*(1/T);

//mp in Kg:
mp1=mp*9.1*10^-31;

//Displaying the result in command window
printf('\n Position of the Fermi level with respect to the centre of the bandgap E-midgap= %0.3f eV',P1);
printf('\n \n Position of the Fermi level with respect to the top of the valance band Ev = %0.3f eV',P2);
printf('\n \n Position of the Fermi level with respect to the conduction band edge EC = %0.3f eV',P3);
printf('\n \n Intrinsic carrier concentration = %0.2f x 10^6 cm^-3',ni*10^-6);
printf('\n \n Effective mass of electrons in meters = %0.3f m',mn);
printf('\n \n Effective mass of electrons in Kg = %0.2f x 10^-31 Kg',mn1*10^31);
printf('\n \n Effective mass of holes in meters = %0.3f m',mp);
printf('\n \n Effective mass of holes in Kg = %0.2f x 10^-31 Kg',mp1*10^31);

//Answer given in textbook for mn is wrong//
//Answers are varying due to round off error//
