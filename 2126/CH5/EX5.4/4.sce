clc
clear

//Input data
Px=30 //Pressure before the shock in kPa
Tx=-30+273 //Temperature before the shock in K
pr=2.6 //Pressure ratio across the shock wave
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
Mx=1.54 //Mach number before the shock from gas tables @pr
My=0.687 //Mach number after the shock from gas tables @Mx
t1=1.347 //Temperature ratio after and before the shock from gas tables @My
Ty=t1*Tx //Temperature ratio after the shock in K
p1=3.567 //Stagnation pressure after shock to Static pressure before shock from gas tables @My
Poy=p1*Px //Stagnation pressure after shock in kPa
p2=0.917 //Stagnation pressure ratio after and before the shock from gas tables @My
Pox=Poy/p2 //Stagnation pressure before shock in kPa
dP=Pox-Poy //Change in stagnation pressure in kPa
ax=sqrt(k*R*Tx) //Velocity of sound before the shock in m/s
Cx=(Mx*ax) //Air Velocity before the shock in m/s
ay=sqrt(k*R*Ty) //Velocity of sound after the shock in m/s
Cy=(My*ay) //Velocity of air after the shock in m/s

//Output
printf('(A)Velocities upstream and downstream of shock wave are %3.2f m/s and %3.2f m/s respectively\n (B)Change in stagnation pressure is %3.3f kPa',Cx,Cy,dP)
