clc
//initialisation of variables
clear
V1= 1800 //ft/sec
a= 14 //degrees
p= 0.75 //in
h= 2 //in
e= 0.02 //in
vc= 0.89 
v= 650 //ft/sec
l= 9 //in
P= 80 //psia
T= 320 //F
J= 50000
rh1=  7.6 //Btu/ per lb
v1= 5.632 //cu ft per lb
//CALCULATIONS
VR1= sqrt((V1*cosd(a)-v)^2+(V1*sind(a))^2)
VR2= vc*VR1
rh= (VR1^2-VR2^2)/J
E= rh1+rh+VR1
nb= l/p
r= asind((((0.1*P*v1*144/(2*nb*VR2))+e)/0.75))
//RESULTS
printf (' minimum blade exit angle = %.1f degrees',r)
