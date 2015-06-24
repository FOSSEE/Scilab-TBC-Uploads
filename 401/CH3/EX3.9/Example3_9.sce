//Example 3.9
//Program to compare rms pulse broadening per kilometer due to 
//intermodal dispersion for multimode step index fiber with that of 
//near parabolic graded index fiber 

clear;
clc ;
close ;

//Given data
delta=0.01;      //*100 percent - RELATIVE REFRACTIVE INDEX DIFFERENCE
L=1;             //km - LENGTH OF OPTICAL LINK
n1=1.5;          //CORE REFRACTIVE INDEX 
c=2.998*10^8;    //m/s - VELOCITY OF LIGHT IN VACCUM

//RMS pulse broadening /km due to intermodal dispersion for MMSI Fiber
sigma_s=L*n1*delta/(2*sqrt(3)*c);

//RMS pulse broadening /km for near parabolic graded index fiber
sigma_g=L*n1*delta^2/(20*sqrt(3)*c);

//Displaying the Results in Command Window
printf("\n\n\t RMS pulse broadening per kilometer due to intermodal dispersion for MMSI Fiber is %0.1f ns/km.",sigma_s/10^(-12));
printf("\n\n\t RMS pulse broadening per kilometer for near parabolic graded index fiber is %0.1f ps/km.",sigma_g/10^(-15));