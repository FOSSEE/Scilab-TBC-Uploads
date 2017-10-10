//Example 2_5
clc();   
clear;
//To find the Tension T in the Supporting Cable
//As Sigma(Fx)=0
theta1=30   //units in degrees
theta2=90-theta1  //units in degrees
H_T=sin(theta1*%pi/180)
W=2000   //Units in Newtons
T=W/sin(theta2*%pi/180)   //units in Newtons
H=T*H_T   //units in Newtons
printf("Tension in the Supporting Cable T=%d N",T)
//In textbook The answer is printed wrong as T=2310N but the correct answer is T=2309N
