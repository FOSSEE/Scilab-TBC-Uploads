//Example 2_2
clc();   
clear;
//To find the tension in the three cords that hold the object
//As Sigma(Fx)=0
theta1=37   //units in degrees
theta2=53   //units in degrees
F1_F2=cos(theta2*%pi/180)/cos(theta1*%pi/180)
//As Sigma(Fy)=0
F3=400  //units in Newtons
F2=round((F3*cos(theta1*%pi/180))/(cos(theta1*%pi/180)^2+cos(theta2*%pi/180)^2)) //units in Newtons
F1=(cos(theta2*%pi/180)/cos(theta1*%pi/180))*F2   //units in Newtons
printf("Tension in string 1 is F1=%d N\n",F1)
printf("Tension in string 2 is F2=%d N\n",F2)
//In textbook the Answer for F2 is printed wrong as 320 N But the correct answer is 319 N