clc
clear

//Input data
Mx=1.5 //Mach number
P=40 //Static pressure in kPa

//Calculation
p1=3.413 //Pressure ratio in (Poy/Px) from normal shock gas tables @Mx
Poy=p1*P //Pressure acting on front of the body in kPa

//Output
printf('Pressure acting on front of the body is %3.1f kPa',Poy)
