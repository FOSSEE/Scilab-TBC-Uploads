//Example 3.5
//Program to estimate 
//(a)The maximum possible bandwidth on the link assuming no ISI
//(b)The pulse dispersion per unit length
//(c)The bandwidth-length product for the fiber

clear;
clc ;
close ;

//Given data
tau=0.1*10^(-6); //second - TOTAL PULSE BROADENING
L=15;            //km - DISTANCE

//(a)The maximum possible bandwidth on the link assuming no ISI
B_opt=1/(2*tau);

//(b)The pulse dispersion per unit length
Dispersion=tau/L;

//(c)The bandwidth-length product for the fiber
B_optXL=B_opt*L;

//Displaying the Results in Command Window
printf("\n\n\t (a)The maximum possible bandwidth on the link assuming no ISI is %1.0f MHz.",B_opt/10^6);
printf("\n\n\t (b)The pulse dispersion per unit length is %0.2f ns/km.",Dispersion/10^(-9));
printf("\n\n\t (c)The bandwidth-length product for the fiber is %1.0f MHz km.",B_optXL/10^6);