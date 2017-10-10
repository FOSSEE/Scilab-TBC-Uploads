clc
//variable initialization
Vm= 220 //armature voltage in volts
N= 1000 //speed in rpm
N1= 900 // speed in rpm
Ia= 60 //armature current in ampere
Ra= 0.6 //armature resistance in ohm
a= 0
V= 165 //line voltage in volts

//solution
Eb1= Vm-Ia*Ra //back emf in volts
Eb2= (N1/N)*Eb1 //back emf in volts
Ea=Eb2+(Ia*Ra) //armature voltage in volts
Em= V*sqrt(2) 
A=(((Ea*%pi)/(3*Em)))
a1=acosd(A)
a2=180-a1
Ea1=V-(Ia*Ra) //armature voltage in volts
cosa1=((Ea/Em)*(%pi/3))
a11=acosd((Ea1*%pi)/(3*Em))
a22=180-a1
printf('\n\n Firing Angle for motoring operations at rated motor torqu and 900 or -900 rpm=%0.1f \n\n',a1)
printf('\n\n Firing Angle for motoring operations at rated motor torqu and 900 or -900 rpm=%0.1f \n\n',a2)
printf('\n\n Firing Angle for braking operations at rated motor torqu and 900 or -900 rpm=%0.1f \n\n',a11)
printf('\n\n Firing Angle for braking operations at rated motor torqu and 900 or -900 rpm=%0.1f \n\n',a22)
//The answers vary due to round off error
