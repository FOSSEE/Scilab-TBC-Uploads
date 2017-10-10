//Example 5_15
clc();
clear;
//To find out how large a force is required
m=2000 //units in Kg
vf=15   //units in meters/sec
f1=500   //units in Newtons
F=((0.5*m*(vf^2))/80)+f1   //units in Newtons
printf("Force required is F=%d N",F)
//In text book the answer is printed wrong as F=3300 N but the correct answer is 3312 N
