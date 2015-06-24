clc
clear
//Input data 
P=10^5;//The average pressure of the steam in a double acting steam engine in newtons/m^2
L=1;//The length of the stroke in m 
A=0.15;//The area of the piston in m^2 
N=5;//Number of strokes in strokes per second 

//Calculations 
P=(2*P*L*A*N)/1000;//The power of the engine in kilowatts 

//Output 
printf('The power of the engine is %3.0f kilowatts ',P)
