//Example 2_3
clc();   
clear;
//To find the weight and the Tension in the cords
//As Sigma(Fx)=0
theta1=53  //units in degrees
theta2=37   //units in degrees
F1=100    //units in Newtons
F=F1/cos(theta1*%pi/180)   //units in Newtons
W=cos(theta2*%pi/180)*F    //units in Newtons
printf("The Weight W=%d N\n",W)
printf("Tension in the chord is F=%d N",F)
//In text book the answers are printed wrong as F=167N and W=133N but the correct answers are W=132N and F=166N
