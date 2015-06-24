//Example 5.7
//Program to determine the excess loss, insertion losses, crosstalk
//and split ratio
  
clear;
clc ;
close ;

//Given data
P1=60*10^(-6);     //Watts - INPUT POWER AT PORT 1 
P2=0.004*10^(-6);  //Watts - OUTPUT POWER AT PORT 2
P3=26*10^(-6);     //Watts - OUTPUT POWER AT PORT 3
P4=27.5*10^(-6);   //Watts - OUTPUT POWER AT PORT 4

//Calculation of Excess Loss
Excess_loss=10*log10(P1/(P3+P4));

//Calculation of Insertion Loss (ports 1 to 3)
Insertion_loss3=10*log10(P1/P3);

//Calculation of Insertion Loss (ports 1 to 4)
Insertion_loss4=10*log10(P1/P4);

//Calculation of Crosstalk
Crosstalk=10*log10(P2/P1);

//Calculation of Split Ratio
Split_ratio=P3/(P3+P4)*100;

//Displaying the Results in Command Window
printf("\n\n\t Excess Loss is %0.2f dB .",Excess_loss);
printf("\n\n\t Intrinsic Loss (ports 1 to 3) is %0.2f dB .",Insertion_loss3);
printf("\n\n\t Intrinsic Loss (ports 1 to 4) is %0.2f dB .",Insertion_loss4);
printf("\n\n\t Crosstalk is %0.1f dB .",Crosstalk);
printf("\n\n\t Split Ratio is %0.1f percent .",Split_ratio);