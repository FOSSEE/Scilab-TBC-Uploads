//Example 5.3
//Program to estimate the insertion loss when:
//(a)there is uniform illumination of all guided modes only 
//(b)there is uniform illumination of all guided and leaky modes 

clear;
clc ;
close ;

//Given data
y=3*10^(-6);     //metre - LATERAL MISALIGNMENT
a=25*10^(-6);    //metre - CORE RADIUS

//(a)Misalignment Loss
Lt1=0.85*(y/a);
//Coupling efficiency
eeta_lat1=1-Lt1;
//Insertion Loss
Loss_lat1=-10*log10(eeta_lat1);

//(b)Misalignment Loss
Lt2=0.75*(y/a);
//Coupling efficiency
eeta_lat2=1-Lt2;
//Insertion Loss
Loss_lat2=-10*log10(eeta_lat2);

//Displaying the Results in Command Window
printf("\n\n\t (a)Insertion Loss (there is uniform illumination of all guided modes only) is %0.2f dB .",Loss_lat1);
printf("\n\n\t (b)Insertion Loss (there is uniform illumination of all guided and leaky modes) is %0.2f dB .",Loss_lat2);