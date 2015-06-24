clc
clear

//Input data
Cx=750 //velocity upstream of shock in m/s
Px=1 //Pressure upstream of shock in bar
Tx=10+273 //Temperature upstream of shock in K
k=1.4 //Adiabatic constant  
R=287 //Specific gas constant in J/kg-K

//Calculation
Mx=Cx/sqrt(k*R*Tx) //Mach number upstream of shock
My=0.545 //Mach number downstream of shock from normal shock gas tables, Mistake in textbook
t1=1.875 //Temperature ratio (Ty/Tx)
Ty=Tx*t1 //Static temperature downstream of shock in K
p1=5.583 //Pressure ratio (Py/Px)
Py=Px*p1 //Static pressure downstream of shock in bar
Cy=My*sqrt(k*R*Ty) //velocity downstream of shock in m/s

//Output
printf('Downstream of shock:\n    Velocity is %3.3f m/s\n    Pressure is %3.3f bar\n    Temperature is %3.3f K',Cy,Py,Ty)
