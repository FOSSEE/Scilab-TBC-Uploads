//To find radius and MI
clc
//Given:
m=55 //kg
l=850/1000, d1=75/1000, d2=100/1000 //m
tp1=1.83, tp2=1.68 //seconds
//Solution:
//Refer Fig. 15.20
//Calculating the length of equivalent simple pendulum when suspended from the top of small end bearing
L1=9.81*(tp1/(2*%pi))^2 //m
//Calculating the length of equivalent simple pendulum when suspended from the top of big end bearing
L2=9.81*(tp2/(2*%pi))^2 //m
//Radius of gyration of the rod about an axis passing through the centre of gravity and perpendicular to the plane of oscillation:
//Calculating the distances of centre of gravity from the top of small end and big end bearings
//We have, h1*(L1-h1) = h2*(L2-h2), or h1^2-h2^2+h2*L2-h1*L1 = 0                                                                    .....(i)
//Also, h1+h2 = d1/2+l+d2/2, or h1+h2-d1/2-l-d2/2 = 0                                                                               .....(ii)
function y=f(x)
    h1=x(1)
    h2=x(2)
    y(1)=h1^2-h2^2+h2*L2-h1*L1
    y(2)=h1+h2-d1/2-l-d2/2
endfunction
z=fsolve([1,1],f)
h1=z(1), h2=z(2) //m
//Calculating the required radius of gyration of the rod
kG=sqrt(h1*(L1-h1)) //m
//Calculating the moment of inertia of the rod
I=m*(kG)^2 //kg-m^2
//Dynamically equivalent system for the rod:
//Calculating the distance of the mass situated at the centre of small end bearing from the centre of gravity
l1=h1-d1/2 //m
//Calculating the distance of the second mass from the centre of gravity towards big end bearing
l2=(kG)^2/l1 //m
//Calculating the magnitude of the mass situated at the centre of small end bearing
m1=(l2*m)/(l1+l2) //kg
//Calculating the magnitude of the second mass
m2=(l1*m)/(l1+l2) //kg
//Results:
printf("\n\n Radius of gyration of the rod about an axis passing through the centre of gravity and perpendicular to the plane of oscillation, kG = %.3f m.\n\n",kG)
printf(" Moment of inertia of the rod, I = %.2f kg-m^2.\n\n",I)
printf(" Magnitude of the mass situated at the centre of small end bearing, m1 = %.2f kg.\n\n",m1)
printf(" Magnitude of the second mass, m2 = %.2f kg.\n\n",m2)