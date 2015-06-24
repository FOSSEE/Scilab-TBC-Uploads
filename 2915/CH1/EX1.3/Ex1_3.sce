clc,clear
//example 1.3
//To determine length of unknown side in 3 given right triangles

//Triangle ABC
AB=5 //given
AC=4 //given
a=sqrt(AB^2- AC^2) //by pythagoras theorem
printf('Triangle ABC: a=%f units \n',a)

//Triangle DEF
DE=2 //given
EF=1 //given
e=sqrt(DE^2- EF^2) //by pythagoras theorem
printf(' Triangle DEF: e=%f units = sqrt(%f) units\n',e,e^2)

//Triangle XYZ
XZ=1 //given
YZ=1 //given
z=sqrt(XZ^2+YZ^2)//by pythagoras theorem
printf(' Triangle XYZ: z=%f units = sqrt(%f) units\n',z,z^2)
