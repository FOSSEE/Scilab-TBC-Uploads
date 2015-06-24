//Example 5.7
//Refer Figure 5.27 in the Textbook
//Program to Determine the Q point from given collector characteristics
clear;
clc ;
close ;
//Given Data 
Vcc=12; //V
Rc=1*10^(3); //Ohms
Vbb=10.7; //V
Rb=200*10^(3); //Ohms
Vbe=0.7; //V
//Calculation
Ib=(Vbb-Vbe)/Rb;
//Value of Ib comes out to be 50uA. A dotted Curve is drawn for 
//Ib=40uA and Ib=60uA. At the Point of Intersection:
Vce=6; //V
Ic=6*10^(-3); //A
//Displaying The Results in Command Window
printf("\n\t Q point: \n\n\t Ib = %f uA",Ib/10^(-6));
printf("\n\t Vce = %f V",Vce); 
printf("\n\t Ic = %f mA",Ic/10^(-3));