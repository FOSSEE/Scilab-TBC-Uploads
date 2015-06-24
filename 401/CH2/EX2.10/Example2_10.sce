//Example 2.10
//Program to estimate the fiber core diameter for a single mode 
//step index fiber

clear;
clc ;
close ;

//Given data
V=2.2;                  //NORMALIZED FREQUENCY
MFD=11.6*10^(-6);       //metre - MODE FIELD DIAMETER 
W0=5.8*10^(-6);

// The fiber core radius
a=W0/(0.65+1.619*V^(-1.5)+2.879*V^(-6));

//Displaying the Result in Command Window
printf("\n\n\t The fiber core diameter for a single mode step index fiber is %0.1f um.",2*a*10^6);