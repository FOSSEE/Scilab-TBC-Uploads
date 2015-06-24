//Example 5.2
//Program to estimate the insertion loss when:
//(a)there is a small air gap at the joint 
//(b)the joint is considered index matched

clear;
clc ;
close ;

//Given data
n1=1.5;          //CORE REFRACTIVE INDEX
n=1.0;
y=5*10^(-6);     //metre - LATERAL MISALIGNMENT
a=25*10^(-6);    //metre - CORE RADIUS

//(a)Coupling efficiency
eeta_lat1=16*(n1/n)^2/(1+(n1/n))^4*1/%pi*(2*acos(y/(2*a))-(y/a)*sqrt(1-(y/(2*a))^2));
//Insertion Loss
Loss_lat1=-10*log10(eeta_lat1);

//(b)Coupling efficiency
eeta_lat2=1/%pi*(2*acos(y/(2*a))-(y/a)*sqrt(1-(y/(2*a))^2));
//Insertion Loss
Loss_lat2=-10*log10(eeta_lat2);

//Displaying the Results in Command Window
printf("\n\n\t (a)Insertion Loss (there is a small air gap at the joint) is %0.2f dB .",Loss_lat1);
printf("\n\n\t (b)Insertion Loss (the joint is considered index matched) is %0.2f dB .",Loss_lat2);