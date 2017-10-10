
//Example 15_6
clc();
clear;
//To find the magnitude of E
k=9*10^9    //Units in N meter^2/C^2
q=3.6*10^-6      //Units in C
theta=37          //Units in degrees
r=10*sin(theta*%pi/180)*10^-2    //Units in meters  
e1=(k*q)/r^2     //Units in N/C
q2=5*10^-6      //Units in C
theta=37          //Units in degrees
r1=10*10^-2 //Units in meters  
e2=(k*q2)/r1^2     //Units in N/C
e1y=e1         //Units in N/C
e2x=e2*cos(theta*%pi/180)    //Units in N/C
e2y=-e2*sin(theta*%pi/180) //Units in N/C
ex=e2x       //Units in N/C
ey=e1y+e2y        //Units in N/C
e=sqrt(ex^2+ey^2)         //Units in N/C
printf("The magnitude of E is=")
disp(e)
printf("N/C")
//In text book the answer is printed wrong as E=7.26*10^6 N/C but the correct answer is E=7198876.9 N/C
