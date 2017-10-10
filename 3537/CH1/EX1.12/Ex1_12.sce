//Example 1_13
clc();
clear;
//To calculate the fringe width
dist1=0.005      //units in mm
dist2=15   //units in cm
alpha=dist1/dist2 //units in radians
lamda=6000*10^-9   //units in cm
betaa=(lamda)/(2*alpha)    //units in 

printf("Fringe width beta=%.3fcm",betaa)

//In text book answer is printed wrong as 0.09 cm answer is 0.009 cm
