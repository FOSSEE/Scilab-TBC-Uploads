//Example 4.1
//Program to determine the following:
//(a) Fracture Stress in psi for the fiber
//(b) Percentage Strain at the break

clear;
clc ;
close ;

//Given data
St=2.6*10^6;          //psi    - THEORETICAL COHESIVE STRENGTH
la=0.16*10^-9;        //metres - BOND DISTANCE
C=10*10^-9;           //metres - DEPTH OF CRACK
E= 9*10^10  ;         //N/m^2  - YOUNG'S MODULUS OF SILICA

Gamma_p=(4*la*St^2)/E;

//Fracture Stress for an Elliptical Crack
Sf_psi=sqrt((2*E*Gamma_p)/(%pi*C));

//Fracture Stress in psi units
Sf=Sf_psi*6894.76;

//Strain Calculation
strain=Sf/E;

//Displaying the Results in Command Window
printf("\n\n\t Fracture Stress for the fiber is %0.2f X 10^9 N/m or %0.2f X 10^5 psi.",Sf/10^9,Sf_psi/10^5);
printf("\n\n\t Percentage Strain at the break is %d percent.",strain*100);