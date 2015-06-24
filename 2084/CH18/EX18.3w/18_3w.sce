//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 18.3w
//calculation of object distance for half image height as compared to original height in case of reflection by convex mirror

//given data
m=.5; //magnification ratio
f=2.5; //focal length of the convex mirror(in m)

//calculation
//(1/u)+(1/v)=(1/f); //mirror formula
//now m=-v/u=0.5
u=-f; //from formula taking v=-u/2 mirror formula gives this relation

disp(abs(u),'the boy should stand at a distance(in m) from the convex mirror'); 
