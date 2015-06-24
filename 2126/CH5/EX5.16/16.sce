clc
clear

//Input data
Py=455 //Pressure downstream of shock in kPa
Ty=65+273 //Temperature downstream of shock in K
dP=65 //Difference between dynamic and static pressure in kPa
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
Poy=dP+Py //Stagnation pressure after shock in kPa
p1=Py/Poy //Pressure ratio 
My=0.44 //Mach number downstream of shock from isentropic gas tables @p1
Mx=3.8 //Mach number upstream of shock from normal shock gas tables @My
t1=3.743 //Temperature ratio after and before the shock from gas tables @My
Tx=Ty/t1 //Temperature before the shock in K
ax=sqrt(k*R*Tx) //Velocity of sound before the shock in m/s
Cx=Mx*ax //Air Velocity before the shock in m/s

//Output 
printf('(A)Mach number is Mx=%3.1f (My=%3.2f)\n (B)Velocity is %3.2f m/s',Mx,My,Cx)
