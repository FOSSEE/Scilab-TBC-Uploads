clc
clear

//Input data
Mx=2 //Mach number before the shock 
Px=50 //Pressure before the shock in kPa 

//Calculation
p1=6.335 //Stagnation pressure after shock to Static pressure before shock from gas tables @Mx
Poy=p1*Px //Stagnation pressure after shock in kPa

//Output
printf('Pressure acting on the front of the body is %3.2f kPa',Poy)
