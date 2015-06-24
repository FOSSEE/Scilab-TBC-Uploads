clc
clear

//Input data
Mol=39.9 //Molar mass of a gas in kg/mol
k=1.67 //Specific heat ratio 
Mx=2.5 //Mach number before the shock 
Px=40 //Pressure before the shock in kPa 
Tx=-20+273 //Temperature before the shock in K

//Calculation
My=0.554 //Mach number after the shock from gas tables @Mx
p1=7.567 //Static pressure ratio after and before the shock from gas tables @My
Py=p1*Px //Static pressure after shock in kPa
t1=2.805 //Temperature ratio after and before the shock from gas tables @My
Ty=Tx*t1 //Temperature ratio after the shock in K

//Output
printf('Downstream the normal shock:\n    Mach number is %3.3f\n    Pressure is %3.2f kPa\n    Temperature is %3.3f K',My,Py,Ty)
