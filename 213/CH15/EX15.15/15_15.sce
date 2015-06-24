//To find equivalent system
clc
//Given:
l=300, l1=200 //mm
m=15 //kg
I=7000 //kg-mm^2
//Solution:
//Refer Fig. 15.16 and Fig. 15.17
//Calculating the radius of gyration of the connecting rod about an axis passing through its centre of gravity
kG=sqrt(I/m) //mm
//Calculating the distance of other mass from the centre of gravity
l2=(kG)^2/l1 //mm
//Calculating the magnitude of mass placed at the small end centre
m1=(l2*m)/(l1+l2) //kg
//Calculating the magnitude of the mass placed at a distance l2 from the centre of gravity
m2=(l1*m)/(l1+l2) //kg
//Results:
printf("\n\n Mass placed at the small end centre, m1 = %.2f kg.\n\n",m1)
printf(" Mass placed at a distance %.2f mm from the centre of gravity, m2 = %.2f kg.\n\n",l2,m2)