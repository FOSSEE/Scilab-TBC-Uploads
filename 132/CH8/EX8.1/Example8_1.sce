//Example 8.1
//Refer Figure 8.15 and 8.16 in the Textbook
//Program to find the Hybrid Parameters from the given Transistor Characteristics
clear;
clc ;
close ;
//Given Circuit Data
Ic=2*10^(-3); //A
Vce=8.5; //V
//Calculation
//hfe=delta(ic)/delta(ib),Vce=constant
hfe=(2.7-1.7)*10^(-3)/((20-10)*10^(-6));
//hoe=delta(ic)/delta(Vce),ib=constant
hoe=(2.2-2.1)*10^(-3)/(10-7);
//hie=delta(Vbe)/delta(ib),Vce=constant
hie=(0.73-0.715)/((20-10)*10^(-6));
//hre=delta(Vbe)/delta(Vce),ib=constant
hre=(0.73-0.72)/(20-0);
//Displaying The Results in Command Window
printf("\n\t The Hybrid Parameters are:");
printf("\n\n\t hfe = %f ",hfe);
printf("\n\t hoe = %f uS",hoe/10^(-6));
printf("\n\t hie = %f kOhms",hie/10^3);
printf("\n\t hre = %f ",hre);