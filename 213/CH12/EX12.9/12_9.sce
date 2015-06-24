//To find number of teeth
clc
//Given:
G=3
phi=20 //degrees
Aw=1 //module
//Solution:
//Calculating the minimum number of teeth for a gear ratio of 3:1
t1=(2*Aw)/(G*(sqrt(1+1/G*(1/G+2)*(sind(phi))^2)-1))
//Calculating the minimum number of teeth for equal wheel
t2=(2*Aw)/(sqrt(1+3*(sind(phi))^2)-1)
//Results:
printf("\n\n Minimum number of teeth for a gear ratio of 3:1, t = %d.\n\n",t1+1)
printf(" Minimum number of teeth for equal wheel, t = %d.\n\n",t2+1)