//CHAPTER 2,ILLUSTRATION 9 PAGE 63
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS
clc
clear
//INPUT
P=35000//POWER TO BE TRANSMITTED IN WATTS
D=1.5//EFFECTIVE DIAMETER OF PULLEY IN METRES
N=300//SPEED IN rpm
e=2.71
U=.3//COEFFICIENT OF FRICTION
PI=3.141
THETA=(11/24)*360*PI/180//ANGLE OF CONTACT
density=1.1//density of belt material in Mg/m^3
L=1//in metre
t=9.5//THICKNESS OF BELT IN mm
Fb=2.5//PERMISSIBLE WORK STRESS IN N/mm^2

//CALCULATION
V=PI*D*N/60//VELOCITY IN m/s
X=P/V//X=T1-T2
Y=e^(U*THETA)//Y=T1/T2
T1=X*Y/(Y-1)
Mb=t*density*L/10^3//value of m/b
Tc=Mb*V^2//centrifugal tension/b
Tmaxb=t*Fb//max tension/b
b=T1/(Tmaxb-Tc)//thickness in mm
//output
printf('\nTENSION IN TIGHT SIDE OF THE BELT =%f N',T1)
printf('\nTHICKNESS OF THE BELT IS =%f mm',b)


