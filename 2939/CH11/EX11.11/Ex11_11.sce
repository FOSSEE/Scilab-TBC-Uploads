
//Ex11_11

clc;

// To find:
//Fraction of the energy absorbed by ethanol

//Formula:
//(Z/A) for  compound = (summation of Z of all the atoms)/ molecular weight of compound

z1=26/46;// Z/A value for ethanl
z2=32/60;// Z/A value for acetic acid
Deth=z1/(z1+z2);
// Note that the dose absorbed by each component is proportional to its Z/A in the total
printf("The fraction of the energy absorbed by ethanol = %f",Deth)
