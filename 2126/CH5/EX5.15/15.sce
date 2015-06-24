clc
clear

//Input data
Px=16 //Pressure before the shock in kPa
Poy=70 //Stagnation pressure after shock in kPa
To=300+273 //Stagnation temperature in K
k=1.4 //Adiabatic constant 

//Calculation
p1=Poy/Px //Pressure ratio 
Mx=1.735 //Mach number upstream of shock 
My=0.631 //Mach number downstream of shock 
p2=0.84 //Ratio of stagnation pressures after and before shock from gas tables
t1=1.483 //Temperature ratio after and before shock from gas tables
Tx=To/(1+((k-1)/2)*Mx^2) //Temperature upstream of shock in K
Ty=Tx*t1 //Temperature downstream of shock in K
Pox=Poy/p2 //Stagnation pressure before shock in kPa

//Output
printf('(A)Mach number of the tunnal is Mx=%3.3f (My=%3.3f)\n (B)Upstream of the tube:\n    Static temperature is %3i K\n    Total pressure is %3.1f kPa\n (C)Downstream of the tube:\n    Static temperature is %3i K\n    Total pressure is %3i kPa',Mx,My,Tx,Pox,Ty,Poy)
