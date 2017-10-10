//Example 15_3
clc();
clear;
//To find the resultant force
f1=6 //Units in N
f2=18     //Units in N
f=sqrt(f1^2+f2^2) //Units in N
theta=atan(f2/f1)*180/%pi  //Units in degrees
printf("The resultant force is f=%d N \n The resultant angle is theta=%.1f degrees",f,theta)
//In text book answer printed wrong as f=19 N correct answer is f=18N 
