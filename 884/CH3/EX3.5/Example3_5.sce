// Computation of molecular mass of a compound

clear;
clc;

printf("\t Example 3.5\n");

MassO=16;//mass of O, amu

//(a)
MassS=32.07;//mass of S, amu
MassSO2=MassS+MassO*2;//mass of SO2, amu

printf("\t the molecular mass of SO2 is : %4.2f amu\n",MassSO2);

//(b)
MassN=14.01;//mass of N, amu
MassH=1.008;//mass of H, amu
MassC=12.01;//mass of C, amu
MassC8H10N4O2=8*MassC+10*MassH+4*MassN+2*MassO;

printf("\t the molecular mass of C8H10N4O2 is : %4.2f amu\n",MassC8H10N4O2);

//End
