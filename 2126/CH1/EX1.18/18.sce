clc
clear

//Input data
h=1100 //Height in m
M1=2.5 //Mach number of aircraft @h
T=280 //Temperature @h
M2=0.5 //Mach number of observer
k=1.4 //Adiabatic Constant
R=287 //Specific gas constant in J/kg-K

//Calculation
alp=asind(1/M1) //Mach cone angle in degree
a=sqrt(k*R*T) //Velocity of sound in m/s
C1=M1*a //Velocity of aircraft when the observer is stationary in m/s
t1=h/(C1*tand(alp)) //Time elapsed when the observer is stationary in sec
C2=(M1-M2)*a //Velocity of aircraft when the observer is moving in the direction of aircraft in m/s
t2=h/(C2*tand(alp)) //Time elapsed when the observer is moving in the direction of aircraft in sec
C3=(M1+M2)*a //Velocity of aircraft when the observer is moving in the opposite direction in m/s
t3=h/(C3*tand(alp)) //Time elapsed when the observer is moving in the opposite direction in sec

//Output
printf('(A)Time elapsed when the observer is stationary is %3.3f sec\n (B)Time elapsed when the observer is moving in the direction of aircraft with M=%3.1f is %3.2f sec\n (C)Time elapsed when the observer is moving in the opposite direction is %3.2f sec\n',t1,M2,t2,t3)
