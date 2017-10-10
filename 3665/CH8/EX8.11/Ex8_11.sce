clc//
//
//

//Variable declaration
Na=5*10^23;     //number of atoms(atoms)
Nd=3*10^23;     //number of atoms(atoms)
ni=2*10^16;    //intrinsic charge carriers(per m^3)

//Calculation
p=2*(Na-Nd)/2;    //hole concentration(per m^3)
n=ni^2/p;       //electron concentration(per m^3)

//Result
printf("\n electron concentration is %0.3f *10^9 per m^3",n/10^9)
