clc
clear

//Input data
Px=1 //Pressure before the shock in bar
Tx=17+273 //Temperature before the shock in K
Cx=500 //Air Velocity before the shock in m/s
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
ax=sqrt(k*R*Tx) //Velocity of sound before the shock in m/s
Mx=Cx/ax //Mach number before the shock 
My=0.715 //Mach number after the shock from gas tables @Mx
p1=2.335 //Static pressure ratio after and before the shock from gas tables @My
Py=p1*Px //Static pressure after shock in bar
t1=1.297 //Temperature ratio after and before the shock from gas tables @My
Ty=Tx*t1 //Temperature ratio after the shock in K
ay=sqrt(k*R*Ty) //Velocity of sound after the shock in m/s
Cy=ay*My //Velocity of air after the shock in m/s
C_y=Cx-Cy //Velocity of air in m/s
M_y=C_y/ay  //Mach number impared upstream of the wave front
t2=0.939 //Static to stagnation temperature ratio after shock from isentropic gas tables @M_y
T_oy=Ty/t2 //Stagnation temperature of air in K

//Output
printf('(A)Pressure is %3.3f bar\n (B)Temperature is %3.2f K\n (C)Velocity of air is %3.2f m/s\n (D)Stagnation temperature is %3.2f K\n (E)Mach number is %3.3f',Py,Ty,C_y,T_oy,M_y)
