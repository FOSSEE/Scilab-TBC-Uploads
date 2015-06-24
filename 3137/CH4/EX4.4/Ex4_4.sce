//Initilization of variables
x1=-2
y1=2
z1=-2
x2=3
y2=0
z2=-4
x3=3
y3=2
z3=2
F1=40 //lb
F2=30 //lb
F3=20 //lb
Mxm=[-92.4,-48,-19.4]
Mym=[-46.2,72,9.8]
Mzm=[46.2,-36,19.4]
//Calculations
mag1=sqrt(x1^2+y1^2+z1^2)
mag2=sqrt(x2^2+y2^2+z2^2)
mag3=sqrt(x3^2+y3^2+z3^2)
thetax1=acosd(x1/mag1) //degrees
thetay1=acosd(y1/mag1) //degrees
thetaz1=acosd(z1/mag1) //degrees
thetax2=acosd(x2/mag2) //degrees
thetay2=acosd(y2/mag2) //degrees
thetaz2=acosd(z2/mag2) //degrees
thetax3=acosd(x3/mag3) //degrees
thetay3=acosd(y3/mag3) //degrees
thetaz3=acosd(z3/mag3) //degrees
//Now we will define all the components in terms of matrices for simplicity of computation
F=[F1,F2,F3] //lb
COSthetax=[cosd(thetax1);cosd(thetax2);cosd(thetax3)]
COSthetay=[cosd(thetay1);cosd(thetay2);cosd(thetay3)]
COSthetaz=[cosd(thetaz1);cosd(thetaz2);cosd(thetaz3)]
Fx=F*COSthetax //lb
Fy=F*COSthetay //lb
Fz=F*COSthetaz //lb
R=sqrt(Fx^2+Fy^2+Fz^2) //lb
thetax=acosd(Fx/R) //degrees
thetay=acosd(Fy/R) //degrees
thetaz=acosd(Fz/R) //degrees
//Moment calculations
Mx=Mxm(1)+Mxm(2)+Mxm(3) //lb-ft
My=Mym(1)+Mym(2)+Mym(3) //lb-ft
Mz=Mzm(1)+Mzm(2)+Mzm(3) //lb-ft
C=sqrt(Mx^2+My^2+Mz^2) //lb-ft
//Direction cosines
PHIx=acosd(Mx/C) //degrees
PHIy=acosd(My/C) //degrees
PHIz=acosd(Mz/C) //degrees
//Result
clc
printf('The result of the force is %f lb\n',R)
printf('The angles with respect to X-Axis,Y-Axis and Z-axis are %f ,%f and %f degrees respectively\n',thetax,thetay,thetaz)
printf('The magnitude of resultant couple is %f lb-ft\n',C)
printf('The angles are as follows Cosphix=%f degrees ,Cosphix=%f degrees and Cosphiz=%f degrees',PHIx,PHIy,PHIz)

