//To find equivalent system
clc
//Given:
h=650/1000, l1=(650-25)/1000 //m
m=37.5 //kg
tp=1.87 //seconds
//Solution:
//Refer Fig. 15.18 and Fig. 15.19
//Calculating the radius of gyration of the connecting rod about an axis passing through its centre of gravity
kG=sqrt((tp/(2*%pi))^2*(9.81*h)-h^2) //m
//Calculating the distance of mass m2 from the centre of gravity
l2=(kG)^2/l1 //m
//Calculating the magnitude of mass placed at the small end centre
m1=(l2*m)/(l1+l2) //kg
//Calculating the magnitude of mass placed at a distance l2 from centre of gravity
m2=(l1*m)/(l1+l2) //kg
//Results:
printf("\n\n Mass placed at the small end centre A, m1 = %d kg.\n\n",m1)
printf(" Mass placed at a distance %.3f m from G, m2 = %.1f kg.\n\n",l2,m2)