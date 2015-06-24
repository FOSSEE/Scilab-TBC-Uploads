//CHAPTER 2,ILLUSTRATION 10 PAGE 64
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS
clc
clear
//INPUT
t=5//THICKNESS OF BELT IN m
PI=3.141
U=.3
e=2.71
THETA=155*PI/180//ANGLE OF CONTACT IN radians
V=30//VELOCITY IN m/s
density=1//in m/cm^3
L=1//LENGTH

//calculation
Xb=80//           (T1-T2)=80b;so let (T1-T2)/b=Xb
Y=e^(U*THETA)//    LET Y=T1/T2
Zb=80*Y/(Y-1)//   LET  T1/b=Zb;BY SOLVING THE ABOVE 2 EQUATIONS WE WILL GET THIS EXPRESSION
Mb=t*L*density*10^-2// m/b in N
Tcb=Mb*V^2//          centrifugal tension/b
Tmaxb=Zb+Tcb//         MAX TENSION/b
Fb=Tmaxb/t//STRESS INDUCED IN TIGHT BELT

//OUTPUT
printf('THE STRESS DEVELOPED ON THE TIGHT SIDE OF BELT=%f N/cm^2',Fb)














