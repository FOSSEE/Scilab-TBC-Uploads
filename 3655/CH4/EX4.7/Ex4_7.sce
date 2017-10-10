// Example 4.7
// Computation for Calculation for concentration of holes and electrons in a p-type germanium at 300 degreeK for case(A) and position of fermi level with respect to the edge of the conduction band for case(B)//
// Page no.101

clc;
clear;
close;

//Given data ;
sigma=100;//100 ohmcm^-1
mu_p=1800;
e=1.60*10^-19;
ni=2.5*10^13;
kT=0.0259;
NV=6.0*10^19;
EG=0.72;


//.................................(A)......................................//

//Calculation for concentration of holes in a p-type germanium at 300 degreeK//
Pp=sigma/(mu_p*e);

//Calculation for concentration of electrons in a p-type germanium at 300 degreeK//
np=ni^2/Pp;

//.................................(B)......................................//

//Calculation for P1//
P1=kT*log(NV/Pp);//P1=EF-EV

//the fermi level is located at 0.133eV above the edge of the valance band//

//Calculation for position of EF with respect to conduction band//
P2=P1-EG;

//the fermi level is located at -0.587eV below the edge of the conduction band//


//Displaying the result in command window
printf('\n Concentration of holes of the given germanium = %0.2f x 10^17 cm^-3',Pp*10^-17);
printf('\n \n Concentration of electrons of the given germanium = %0.2f x 10^9 cm^-3',np*10^-9);
printf('\n \n EF-EV = %0.3f eV',P1);
printf("\n (This shows that the fermi level is located at 0.133eV above the edge of the valance band)");
printf('\n \n Position of EF with respect to conduction band = %0.3f eV',P2);
printf("\n (This shows that the fermi level is located at -0.587eV below the edge of the conduction band)");

//Answers are varying due to round off error//
