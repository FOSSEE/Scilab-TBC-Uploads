//Example 3.12
//Program to determine modal birefringence, coherence length and difference between propagation constants for the two orthogonal modes 

clear;
clc ;
close ;

//Given data
lambda=0.9*10^(-6);   //metre - PEAK WAVELENGTH 
Lb=9*10^(-2);         //metre - BEAT LENGTH
del_lambda=1*10^(-9); //metre - SPECTRAL LINE WIDTH

//Modal Birefringence
Bf=lambda/Lb;

//Coherence Length
Lbc=lambda^2/(Bf*del_lambda);

//Difference between propagation constants for the two orthogonal 
//modes 
Bx_minus_By=2*%pi/Lb;

//Displaying the Results in Command Window
printf("\n\n\t The Modal birefringence  is %1.0f X 10^(-5) .",Bf/10^(-5));
printf("\n\n\t The Coherence Length is %d m.",round(Lbc));
printf("\n\n\t The difference between propagation constants for the two orthogonal modes is %0.1f .",Bx_minus_By);