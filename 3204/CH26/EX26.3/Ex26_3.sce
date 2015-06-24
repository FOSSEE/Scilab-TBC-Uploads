// 1 APPENDIX. Ex no 3. Page no 640
//initiliation of variables
T=2500 //N
//Co-ordinates
Q=[40,0,-30]
P=[0,80,0]

//Calculations
mag_QP=sqrt((P(1)-Q(1))^2+(P(2)-Q(2))^2+(P(3)-Q(3))^2) //Magnitude
QP=[(P(1)-Q(1)),(P(2)-Q(2)),(P(3)-Q(3))] 
F=(T/mag_QP)*QP //N
thetax=acosd(F(1)/T) //degrees
thetay=acosd(F(2)/T) //degrees
thetaz=acosd(F(3)/T) //degrees

//Result
clc
printf("The force vector is %fi+%fj+%fk N\n",F(1),F(2),F(3))
//Answer in the textbook is printed as 1600 which is incorrect
printf("The angles are thetax=%f,thetay=%f and thetaz=%f degrees",thetax,thetay,thetaz)
