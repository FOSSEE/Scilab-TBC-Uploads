//Initilization of variables
Fx=2.63 //N
Fy=4.28 //N
Fz=-5.92 //N
//Calculation
F=sqrt(Fx^2+Fy^2+Fz^2) //N
thetax=((acos(Fx/F))*180)/%pi //degrees
thetay=((acos(Fy/F))*180)/%pi //degrees
thetaz=((acos(Fz/F))*180)/%pi //degrees
//Result
clc
printf('The magnitude of force is:%f N \n',F) //N
printf('Thetax:%f degrees\n',thetax) //degrees
printf('Thetay:%f degrees\n',thetay) //degrees
printf('Thetaz:%f degrees',thetaz) //degrees
