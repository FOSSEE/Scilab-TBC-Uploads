clc
disp("Example 5.37")
printf("\n")
disp("calculate the phase shift with negative feedback")
printf("Given\n")
//open loop phase shift
Po=15
//open loop gain
Av=60000
//closed loop gain
Acl=300
//to calculate phase shift with feedback
AvB=(Av/Acl)-1
k=((AvB*sin(Po*%pi/180))/(1+(AvB*cos(Po*%pi/180))))
Pcl=Po-(atan(k)*180/%pi)
printf("The phase shift with negative feedback=\t%f degree\n",Pcl)
