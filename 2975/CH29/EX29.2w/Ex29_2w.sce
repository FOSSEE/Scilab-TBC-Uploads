//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 29_2w

clc;clear;
//Given Data

q_a=8*10^-6;        //Charge at A (Unit: C)
q_b=-2*10^-6;       //Charge at B (Unit: C)
dis_ab=20*10^-2;    //Distance between A and B(Unit: m)

//Calculation


distance=dis_ab/((q_a/(-q_b))^(1/2)-1);     //Calculation of the distance of the third particle (Unit: m)
distance_cm=100*distance;                   //Converting distance from meter to centimeter (Unit:cm)

disp(distance_cm,"Third particle should be placed at (Unit : cm)");
