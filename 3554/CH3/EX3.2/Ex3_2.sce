// Exa 3.2

clc;
clear all;

// Given data

//Refer fig. 3.4
Rm=100;//Ohms
Im=50; ///micro Amp

// Solution

//For 0-1mA range
 // Ish*Rsh=Im*Rm;
 disp("The four linear equations are as follows:");
 printf(' R1+R2+R3+R4 = %.2f \n ',50*100/950);  //say-equaion (3.1)
 
 //For 0-10 mA range
 printf('R1+R2+R3-(50/9950)*R4= % .3f \n ',100*50/9950); //say-equation(3.2)
 
 //For 0-50 mA range
 printf('R1+R2-(50/49950)*R3-(50/49950)*R4 = %.3f \n ',100*50/49950); //say-equation(3.3)
 
 //For 0-100mA range
 printf('R1-(50/99950)*R2-(50/99950)*R3-(50/99950)*R4 = %.3f \n ',50*100/99950);//say-equation(3.4)
 
 //converting it into matrix form
 A=[1 1 1 1;1 1 1 -(50/9950);1 1 -(50/49950) -(50/49950);1 (-50/99950)  (-50/99950) (-50/99950)];
 
 B=[-50*100/950 ; -100*50/9950  ; -100*50/49950 ;  -50*100/99950];
 
 [R,y]=linsolve(A,B);A*R+B;//linear equaion solving function
 
 disp("The value of R1,R2 R4 and R4 are given as follows-");
 printf(' R1 = %.5f Ohms \n R2= %.5f Ohms \n R3= %.5f Ohms \n R4= %.5f Ohms \n ',R(1),R(2),R(3),R(4));
 
 // The value of R3 vary due to round off errors
