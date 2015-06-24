// Chapter 1
//Output power in Watt
//page 18
//Example no 1-9
//Given
clc;
P1=12;      // in dBw
Ref=1;   // in mW
P=10^(P1*Ref/10);
printf("\n The ordinary power gain %.1f mW \n",P);    // Result

