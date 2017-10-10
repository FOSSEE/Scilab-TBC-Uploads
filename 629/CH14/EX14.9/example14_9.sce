clear
clc
//Example 14.9 CENTRIFUGAL COMPRESSOR
p1=100; //pressure [kPa]
p2=200; //[kPa]
k=1.4;
Q1=1;//discharge [m^3/s]
eta=0.65; //efficiency
//Theoretical power
Ptheo=(k/(k-1))*Q1*p1*[(p2/p1)^((k-1)/k)-1] //[kW]
//Shaft power
Pshaft=Ptheo/eta //[kW]
printf("\nThe shaft power required to operate the compressor = %.f kW.\n",Pshaft)