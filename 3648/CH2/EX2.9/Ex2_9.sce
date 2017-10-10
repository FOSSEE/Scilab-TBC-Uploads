//Example 2_9
clc();   
clear;
  //To find the forces at the wall and the ground
    theta1=53  //units in degrees
    d1=3  //units in meters
    F1=200  //units in Newtons
    d2=4  //units in Meters
    F2=400  //units in Newtons
    theta2=37  //units in degrees
    d3=6   //units in meters
    P=((cos(theta1*%pi/180)*d1*F1)+(cos(theta1*%pi/180)*d2*F2))/(cos(theta2*%pi/180)*d3) //units in Newtons
    H=P //units in Newtons
    V=F1+F2   //units in Newtons
printf("Force P=%d N\n",P)
printf("Force V=%d N\n",V)
printf("Force H=%d N",H)
//In text book the answer is printed wrong as P=H=275N but the correct answer is P=H=276N
