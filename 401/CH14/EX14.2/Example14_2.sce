//Example 14.2
//Program to determine the absorption loss for the fiber under test

clear;
clc ;
close ;

//Given data
t1=10;               //s - INITIAL TIME
t2=100;              //s - FINAL TIME
Tinf_minus_Tt1=0.525;//From Figure 14.6
Tinf_minus_Tt2=0.021;//From Figure 14.6
C=1.64*10^4;         //J/degree C - THERMAL CAPACITY PER KILOMETER
Tinf=4.3*10^(-4);    //degree C - MAXIMUM THERMAL TEMPERATURE RISE  
Popt=98*10^(-3);     //Watt - OPTICAL POWER  

//Time constant for the calorimeter
tc=(t2-t1)/(log(Tinf_minus_Tt1)-log(Tinf_minus_Tt2));

//Absorption loss of the test fiber
alpha_abs=C*Tinf/(Popt*tc);

//Displaying the Results in Command Window
printf("\n\n\t Time constant for the calorimeter is %0.1f s.",tc);
printf("\n\n\t Absorption loss of the test fiber is %0.1f dB/km.",alpha_abs);