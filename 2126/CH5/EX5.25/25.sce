clc
clear

//Input data
M1=2.8 //Inlet mach number 
sig=42 //Shock wave angle in degree
Px=1 //Pressure upstream of shock in bar(Assuming)
k=1.4 //Adiabatic constant 

//Calculations
Mx=M1*sind(sig) //Mach number before the shock
My=0.601 //Mach number after the shock from gas tables @Mx
p1=3.98 //Static pressure ratio after and before the shock from gas tables @Mx 
Py=Px*p1 //Pressure after shock in bar
p2=4.994 //Stagnation pressure after shock to Static pressure before shock from gas tables @Mx
Poy=Px*p2 //Stagnation pressure after shock in bar
p3=0.788 //Stagnation pressure ratio after and before the shock from gas tables @Mx
Pox=Poy/p3 //Stagnation pressure before shock in kPa
dPl=Pox-Poy //Total pressure loss in bar
def=atand(((M1^2*sind(2*sig))-(2/tand(sig)))/(2+(M1^2*(k+cosd(2*sig))))) //Deflection angle in degree
M2=My/(sind(sig-def)) //Downstream mach number

//Output 
printf('(A)Deflection angle is %3i degree\n (B)Downstream mach number is %3.3f\n (C)Static pressure is %3.3f bar\n (D)Total pressure loss is %3.3f bar',def,M2,Py,dPl)
