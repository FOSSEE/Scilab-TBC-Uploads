//Chapter 5, Example 5.2, Page 117
clc
clear
//Probablility of decay by positron emission
//3 decay modes 
LBp = 0.009497
LBm = 0.02129
LEC = 0.02381
L = LBp+LBm+LEC
P = LBp/L
printf("\n Probability of decay = %f ",P);
//Answer may vary due to round off error
