//Example 5.9
//Program to determine the insertion loss associated with one typical
//path
  
clear;
clc ;
close ;

//Given data
Excess_loss=0.2;   //dB - EXCESS LOSS OF EACH PORT
Split_ratio=0.5;   //*100 percent - SPLIT RATIO
N=16;              //PORTS
M=4;               //For N=16 ports
Splice_loss=0.1;   //dB - SPLICE LOSS

//Calculation of Total Excess Loss
Total_Excess_loss=M*Excess_loss+3*Splice_loss;

//Calculation of Splitting Loss
Splitting_loss=10*log10(N);

//Calculation of Insertion Loss 
Insertion_loss=Splitting_loss+Total_Excess_loss;

//Displaying the Result in Command Window
printf("\n\n\t Insertion Loss is %0.2f dB .",Insertion_loss);