clc
//initialization of variables
clear
w=64 //kg
H=60 //cm
b=40 //cm
h=5 //cm
E=0.12*10^6 //kg/cm^2
Es=2*10^6 //kg/cm^2
// for part (a) and (b)
I=b*h^3/12
del=4*w*120^3/(E*I)
P=w*(1+sqrt(1+(2*H/del)))
str=P*240*6/(b*h^2)
printf('part (a) and (b)')
printf('\n Maximum stress in wood = %d kg/cm^2',str)
printf('\n Max. force on divers feet = %d kg',P)

//for part (c)
Ixx=I*E/Es
Zxx=19.4 //cm^2
Ixx=72.7 //cm^4
del=4*w*120^3/(Es*Ixx)
P=w*(1+sqrt(1+(2*H/del)))
str=P*240/Zxx
// results
printf('\n part (c)')
printf('\n Maximum stress in steel = %d kg/cm^2',str)
printf('\n Max. force on divers feet = %d kg',P)
printf('\n Hence wood is better than steel')

// wrong calculations in some parts
