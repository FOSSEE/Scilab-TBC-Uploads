//Chapter 5, Exmaple 8, page 179
//Calculate corona onset voltage
clc
clear
s = 4 // cm
r = 1 // cm
D = 5*10^2 // cm
dt = 1
E0 = 30*dt*(1 + 0.3*sqrt(dt*r))
printf("\n E0 = %f kVpeak/cm",E0)
//using equations (5.18), the positive and negative corona
En = 27.501 // kVpeak/cm
//part a
Vp1 = 6.2*E0
Vn1 = 6.2*En
printf("\n Part (a)")
printf("\n The postive corona = %f kVpeak",Vp1)
printf("\n The negative corona = %f kV",Vn1)
//part b
Vp2 = 8.32*E0
Vn2 = 8.32*En
printf("\n Part (b)")
printf("\n The postive corona = %f kVpeak",Vp2)
printf("\n The negative corona = %f kV",Vn2)
//part c
Vp3 = 9.97*E0
Vn3 = 9.97*En
printf("\n Part (c)")
printf("\n The postive corona = %f kVpeak",Vp3)
printf("\n The negative corona = %f kV",Vn3)
//part d
Vp4 = 11.39*E0
Vn4 = 11.39*En
printf("\n Part (d)")
printf("\n The postive corona = %f kVpeak",Vp4)
printf("\n The negative corona = %f kV",Vn4)

//Answer CONSIDERABLY vary due to round off error.





