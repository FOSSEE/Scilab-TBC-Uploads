clc
clear

//Input data
At=24 //Throat area in cm^2
A2=50 //Exit area in cm^2
Po=700 //Stagnation pressure in kPa
To=100+273 //Stagnation temperature in K
Ax=34 //Area before the shock in cm^2
Ay=34 //Area after the shock in cm^2

//Calculation
a1=Ax/At //Ratio of areas
Mx=1.78 //Mach number upstream of shock from gas tables @a1
t1=0.61212 //Ratio of temperature before shock to critical state from isentropic gas tables @Mx
Tx=To*t1  //temperature before shock in K
p1=0.179 //Ratio of pressure before shock to critical state from isentropic gas tables @Mx
Px=Po*p1 //pressure before shock in kPa
My=0.621 //Mach number downstream of shock from gas tables @Mx
p2=3.5298 //Static pressure ratio after and before the shock from gas tables @My
Py=Px*p2 //Pressure after shock in kPa
t2=1.51669 //Temperature ratio after and before the shock from gas tables @My
Ty=Tx*t2 //temperature after shock in K
p3=4.578 //Ratio of Stagnation pressure after the shock to static pressure before shock from gas tables @My
Po2=Px*p3 //Stagnation pressure at exit in bar
a2=1.16565 //Ratio of area after shock to critical area across shock from isentropic gas tables @My
At2=Ay/a2 //critical area at exit in cm^2
a3=A2/At2 //Ratio of areas 
M2=0.36 //Exit mach number from gas tables (a3,k=1.4,isentropic)
p4=0.914 //Static to Stagnation pressure ratio at exit from gas tables (a3,k=1.4,isentropic) 
P2=Po2*p4 //Stagnation pressure ratio at exit in kPa
t3=0.975 //Static to Stagnation temperature ratio at exit from gas tables (a3,k=1.4,isentropic)
T2=To*t3 //Stagnation temperature at exit in K

//Output
printf('(A)Properties of fluid just after shock:\n    Mach number My=%3.3f\n    Temperature is %3.2f K\n    Pressure is %3.2f kPa\n (B)Exit mach number is %3.2f\n (C)Properties of fluid at exit:\n    Pressure is %3i kPa\n    Temperature is %3.3f K',My,Ty,Py,M2,P2,T2)
