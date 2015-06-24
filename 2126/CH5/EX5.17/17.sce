clc
clear

//Input data
k=1.4 //Adiabatic constant 
Px=1.01325 //Pressure before the shock in bar
Tx=15+273 //Temperature before the shock in K
Py=13.789 //Pressure just after the shock in bar
R=287 //Specific gas constant in J/kg-K

//Calculation
p1=Py/Px //Pressure ratio 
Mx=3.47 //Mach number upstream of shock from normal shock gas tables @p1
My=0.454 //Mach number downstream of shock from isentropic gas tables @p1
t1=3.213 //Temperature ratio after and before the shock from gas tables @Mx
Ty=Tx*t1 //Temperature downstream of shock in K
p2=15.574 //Stagnation pressure after shock to Static pressure before shock from gas tables @Mx
Poy=Px*p2 //Stagnation pressure after shock in bar
ax=sqrt(k*R*Tx) //Velocity of sound before the shock in m/s
Cx=Mx*ax  //Velocity of air before the shock in m/s 
Csh=Cx //Since Csh=Cx, see dig.
ay=sqrt(k*R*Ty) //Velocity of sound after the shock in m/s
Cy=My*ay //Velocity of air after the shock in m/s
C_y=Cx-Cy //Air velocity just inside the shock in m/s
P_y=Py //Pressure of air in bar, Since a powerful explosion creates a brief but intense blast wind as it passes
a_y=sqrt(k*R*Ty) ////Velocity of sound after the shock in m/s
M_y=C_y/a_y //Mach number

//Output
printf('(A)Shock speed is %3.2f m/s\n (B)Air velocity just inside the shock is %3.2f m/s',Cx,C_y)
