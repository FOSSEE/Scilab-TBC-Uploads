clc
//initialization of variables
clear

// circle
D=1 //unit diameter
Ip=D^4/32
Zp=D^3/16

//Square
s=sqrt(%pi/4)*D
Is=0.886*D^4/32
Zs=0.7383*D^3/16

//Rectangle
a=sqrt(%pi/2)*D
b=sqrt(%pi/8)*D
Ir=0.719*D^4/32
Zr=0.616*D^3/16

// Trianle
t=sqrt(%pi/sqrt(3))*D
It=0.725*D^4/32
Zt=0.622*D^3/16

//Ellipse
A=D/sqrt(2)
B=D/sqrt(8)
Ie=A^3*B^3/(A^2+B^2)
Ze=A*B^2/2

//Normalization
Is=Is/Ip
Ie=Ie/Ip
It=It/Ip
Ir=Ir/Ip

Zs=Zs/Zp
Ze=Ze/Zp
Zt=Zt/Zp
Zr=Zr/Zp
Ip=1
Zp=1
//results
printf('Z:: Circle:Square:Ellipse:Triangle:Rectangle = %.3f : %.3f : %.3f : %.3f : %.3f',Zp,Zs,Ze,Zt,Zr)
printf('\n I:: Circle:Square:Ellipse:Triangle:Rectangle = %.3f : %.3f : %.3f : %.3f : %.3f',Ip,Is,Ie,It,Ir)

