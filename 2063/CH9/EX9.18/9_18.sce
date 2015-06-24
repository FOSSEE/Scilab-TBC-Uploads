clc
clear
//Input data
P1=1;//Initial pressure of air entering a two stage air compressor with complete intercooling in bar
P3=25;//Delivery pressure of air toe the mains in bar
T1=303;//Initial temperature in K
n=1.35;//Compression index

//Calculations
P2=(P1*P3)^(0.5);//Inter cooler pressure for perfect intercooling in bar
R=(P2/P1)^(0.5);//Ratio of cylindrical diameters

//Output
printf('The ratio of cylinder diameters for the efficiency of compression to be maximum is %3.3f',R)
