clc;funcprot(0);//EXAMPLE 5.2
//page 119
// Initialisation of Variables
R1=5*10^8;.........//The rate of moement of interstitial atoms in jumps/s 500 degree celsius
R2=8*10^10;.........//The rate of moement of interstitial atoms in jumps/s 800 degree celsius
T1=500;..........//Temperature at first jump in Degree celsius
T2=800;..........//Temperature at second jump in Degree  celsius
R=1.987;..........//Gas constant in cal/mol-K
//CALCULATIONS
Q=log(R2/R1)/(exp(1/(R*(T1+273)))-exp(1/(R*(T2+273))));.....//Activation Energy for Interstitial    Atoms in cal/mol
disp(Q,"Activation Energy for Interstitial Atoms in cal/mol:")
//answer in book is wrong
