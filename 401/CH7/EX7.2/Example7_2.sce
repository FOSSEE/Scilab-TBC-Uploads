//Example 7.2
//Program to :
//(a)Calculate the optical power emitted into air as a percentage of 
//internal optical power
//(b)Determine the external power efficiency

clear;
clc ;
close ;

//Given data
F=0.68;                  //TRANSMISSION FACTOR
n=1;
nx=3.6;                  //REFRACTIVE INDEX OF GaAs
Pint_by_P=0.5;             //*100 percent - Pe/P

//Percentage optical power emitted
Pe_by_Pint=F*n^2/(4*nx^2);

//External power efficiency
eeta_ep=Pe_by_Pint*Pint_by_P;

//Displaying the Results in Command Window
printf("\n\n\t (a)Percentage optical power emitted is %0.1f percent of generated optical power.",Pe_by_Pint*100);
printf("\n\n\t (b)External power efficiency is %0.2f percent.",eeta_ep*100);