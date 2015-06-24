//To find correcting couple
clc
//Given:
m=2 //kg
l=250/1000, l1=100/1000, kG=110/1000 //m
alpha=23000 //rad/s^2
//Solution:
//Equivalent dynamical system:
//Calculating the distance of the second mass from the centre of gravity
l2=(kG)^2/l1 //m
//Calculating the magnitude of the mass placed at the gudgeon pin
m1=(l2*m)/(l1+l2) //kg
//Calculating the magnitude of the mass placed at a distance l2 from centre of gravity
m2=(l1*m)/(l1+l2) //kg
//Correction couple:
//Calculating the magnitude of l3
l3=l-l1 //m
//Calculating the new radius of gyration
k1=sqrt(l1*l3) //m^2
//Calculating the correction couple
Tdash=m*(k1^2-kG^2)*alpha //N-m
//Results:
printf("\n\n Mass placed at the gudgeon pin, m1 = %.1f kg.\n\n",m1)
printf(" Mass placed at a distance %.3f m from the centre of gravity, m2 = %.1f kg.\n\n",l2,m2)
printf(" Correction couple, Tdash = %.1f N-m.\n\n",Tdash)