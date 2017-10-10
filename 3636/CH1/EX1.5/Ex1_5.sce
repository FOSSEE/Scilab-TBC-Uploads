clc;
clear;
Ey=3*10^4 //electric field in y-axis in N/C
Ex=0      //electric field in x-axis in N/C
q=1.6*10^-19 //electric charge in C
me=9.1*10^-31 //in kg

//Calculation
//F=q*E
Fy=-q*Ey //Force in y direction 
ay=Fy/me

format("e",8)
disp(ay,"Acceleration of the electron is =")
//The negative sign tells us that the direction of this acceleration is downward 
