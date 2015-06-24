//Example 3.1
//Program to Determine 
//(a)Overall signal attenuation
//(b)Signal attenuation per kilometer
//(c)Overall signal attenuation for 10 km optical link with splices 
//(d)Numerical Input/Output power ratio

clear;
clc ;
close ;

//Given data
Pi=120;          //uW - INPUT OPTICAL POWER
Po=3;            //uW - OUTPUT OPTICAL POWER
L=8;             //km - FIBER LENGTH

//(a)Overall signal attenuation
Alpha_dB_L=10*log10(Pi/Po);

//(b)Signal attenuation per kilometer
Alpha_dB=Alpha_dB_L/L;

//(c)Overall signal attenuation for 10 km optical link with splices 
A=Alpha_dB*10+9;

//(d)Numerical Input/Output power ratio
Pi_by_Po=10^(round(A)/10);

//Displaying the Results in Command Window
printf("\n\n\t (a)Overall signal attenuation is %1.0f dB.",Alpha_dB_L);
printf("\n\n\t (b)Signal attenuation per kilometer is %1.0f dB/km.",Alpha_dB);
printf("\n\n\t (c)Overall signal attenuation for 10 km optical link with splices is %1.0f dB.",A);
printf("\n\n\t (d)Numerical Input/Output power ratio is %0.1f.",Pi_by_Po);