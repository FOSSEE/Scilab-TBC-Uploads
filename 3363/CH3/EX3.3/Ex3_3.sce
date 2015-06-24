//Example 3.3, Page 87
clc
//For electron
m1=9.1*10^-31//in kg
v=300//in m/s
h=6.6*10^-34//in joule-sec
p1=m1*v//delta v
delta_p1=.0001*p1//m*delata_v in kg-m/sec
delta_x1=(h)/(4*%pi*delta_p1)
printf("\n Position of electron %e  m",delta_x1)

//For bullet
m2=0.05//in kg
p2=m2*v
delta_p2=0.0001*p2//in kg-m/s
delta_x2=(h)/(4*%pi*delta_p2)
printf("\n Position of bullet %e  m",delta_x2)