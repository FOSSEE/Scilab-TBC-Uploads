clear;
clc;
disp("--------------Example 3.5---------------")
// period = 100 ms
T= 100*10^-3;
f1=1/T;  // formula to find frequency
f= f1*10^-3; // multiply with conversion factor 
printf("The frequency in kHz = %2.1E kHz",f);  //display the final result in kHz
