//Example 2_1
clc();   
clear;
//To find the tension in the other two Strings
//As Sigma(Fx)=0
F3=80   //units in Newtons
Fx1=F3*sin(37*%pi/180)  //units in Newtons
Fy1=F3*cos(37*%pi/180)  //units in Newtons
F2=round(Fy1+0)    //units in Newtons
F1=round(Fx1+0)   //units in Newtons
printf("Tension in String 1 is F1=%d N\n",F1)
printf("Tension in String 2 is F2=%d N",F2)
