
clc
//given
m1=150 //lb
l=3//ft
//number of oscillation per second is given by n
printf("\n")
n=(50/92.5)
printf ("number of oscillation per second = %.2f\n",n)
//length of simple pendulum is given by L=g/(2*%pi*n)^2
L=32.2/(2*%pi*n)^2
printf ("length of simple pendulum = %.2f ft\n",L)
// distance of cg from point of suspension is given by a
a=25/12
k=(a*(L-a))^.5//radius of gyration
moi=m1*k^2
printf("The moment of inertia of rod is %.2f lb ft^2",moi)
