//Example 5.8
//Program to determine the total loss incurred by the star coupler 
//and average insertion loss
  
clear;
clc ;
close ;

//Given data
Pi=1*10^(-3);      //Watts - INPUT POWER AT PORT 1 
Po=14*10^(-6);     //Watts - OUTPUT POWER AT OTHER PORTS
N=32;              //Ports

//Calculation of Splitting Loss
Splitting_loss=10*log10(N);

//Calculation of Excess Loss
Excess_loss=10*log10(Pi/(Po*N));

//Calculation of Total loss
Total_loss=Splitting_loss+Excess_loss;

//Calculation of Average Insertion Loss 
Insertion_loss=10*log10(Pi/Po);

//Displaying the Results in Command Window
printf("\n\n\t Total loss is %0.2f dB .",Total_loss);
printf("\n\n\t Average Insertion Loss is %0.2f dB .",Insertion_loss);