//True-Stress-At-Fracture Computations

clear;
clc;

printf("\tExample 6.4\n");

di=12.8;     //Initial dia in mm
df=10.7;     //Final dia  in mm

printf("\n\tPart B");
Ao=%pi*di^2*10^-6/4;
sig=460*10^6;    //Tensile strength

F=sig*Ao;
printf("\nF = %d N",F);

Af=%pi*df^2/4;
sig_t=F/Af;
printf("\nTrue stress is %d MPa",sig_t);

//End