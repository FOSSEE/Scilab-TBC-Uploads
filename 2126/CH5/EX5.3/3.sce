clc
clear

//Input data
Tx=0+273 //Temperature before the shock in K
Px=60 //Pressure before the shock in kPa
Cx=497 //Air Velocity before the shock in m/s
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
ax=sqrt(k*R*Tx) //Velocity of sound before the shock in m/s
Mx=Cx/ax //Mach number before the shock
My=0.70109 //Mach number after the shock from gas tables @Mx
p1=2.45833 //Static pressure ratio after and before the shock from gas tables @My
Py= p1*Px //Static pressure after shock in kPa
t1=1.32022 //Temperature ratio after and before the shock from gas tables @My
Ty=Tx*t1 //Temperature ratio after the shock in K
p2=3.41327 //Stagnation pressure after shock to Static pressure before shock from gas tables @My
Poy=p2*Px //Stagnation pressure after shock in kPa
p3=0.92979 //Stagnation pressure ratio after and before the shock from gas tables @My
Pox=Poy/p3 //Stagnation pressure before shock in kPa
ay=sqrt(k*R*Ty) //Velocity of sound after the shock in m/s
Cy=ay*My //Velocity of air after the shock in m/s

//Output
printf('After shock:\n    (A)Mach number is %3.5f\n    (B)Velocity is %3.3f m/s\n    (C)Stagnation pressure is %3.3f kPa\n',My,Cy,Poy)
