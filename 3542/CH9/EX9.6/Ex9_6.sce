// Example no 9.6
// To determine the maximum throughput using ALOHA and slotted ALOHA
// Page no. 466

clc;
clear all;

//The maximum throughput using ALOHA
Rmax=1/2;                                            //Maximum rate of arrival calculated by equating ALOHA throughput formula derivative to zero
T=Rmax*exp(-1);                                      //The maximum throughput using ALOHA

// Displaying the result in command window
printf('\n The maximum throughput using ALOHA = %0.4f',T);

//The maximum throughput using slotted ALOHA
Rmax=1;                                              //Maximum rate of arrival calculated by equating slotted ALOHA throughput formula derivative to zero
T=Rmax*exp(-1);                                      //The maximum throughput using slotted ALOHA

// Displaying the result in command window
printf('\n The maximum throughput using slotted ALOHA = %0.4f',T);
