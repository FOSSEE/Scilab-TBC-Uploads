// Example 3.3
// Computation for numerical value of n and EF//
// Page no.71

clc;
clear;
close;

//Given data ;
A_num=6.02*10^23;//Avogadro number
atom_wt=184;//Atomic weight
sg=18.8;//specific gravity of tungstan
n_elect=2;//number of electrons
n_atom=1;//number of atom per molecule


//Calculation for numerical value of n//
n=(A_num*(1/atom_wt)*sg*n_elect*n_atom)*10^6;

//Calculation for numerical value of EF//
EF=3.64*10^-19*n^(2/3);


//Displaying the result in command window
printf('\n Numerical value of n = %0.2f x 10^29 electron/m3',n*10^-29);
printf('\n \n Numerical value of EF = %0.2f eV',EF);


//Answers are varying due to round off error//
