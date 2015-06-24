clc
clear

//Input data
Po=700 //Stagnation pressure in kPa
To=500+273 //Stagnation temperature in K
a1=3.5 //Ratio of exit area to throat area
m=5.5 //Mass flow rate in kg/s
Cp=1.005 //Specific heat capacity at constant pressure in kJ/kg-K
k=1.4 //Adiabatic constant

//Calculation
My=1/sqrt(k) //Mach number downstream of shock
M2=2.8 //Mach number at outlet from gas tables @a1 
t1=0.389 //Static to Stagnation temperature ratio at exit from gas tables (M1,k=1.4,isentropic)
T2=To*t1 //Exit temperature in K
p1=0.0369 //Static to Stagnation pressure ratio at exit from gas tables (M1,k=1.4,isentropic)
P2=Po*p1 //exit pressure in kPa
p2=0.2  //Ratio of pressure at exit to pressure at critical state at exit from Rayleigh flow gas tables @M2
Pt2=P2/p2 //Exit pressure at critical state in kPa
t2=0.315 //Ratio of temperature at exit to temperature at critical state at exit from Rayleigh flow gas tables @M2
Tt2=T2/t2 //Exit temperature at critical state in K
t3=0.674 //Ratio of Stagnation temperature at exit to stagnation temperature at critical state at exit from Rayleigh flow gas tables @M2
Tto2=To/t3 //Exit stagnation temperature at critical state in K
Mx=1.2 //Mach number upstream of shock from gas tables @My
p3=0.796 //Ratio of Static pressure before shock to critical pressure at exit from gas tables (Rayleigh flow,Mx,k=1.4)
Px=Pt2*p3 //Static pressure before shock in kPa
t4=0.912 //Ratio of Static temperature before shock to critical temperature at exit from gas tables (Rayleigh flow,Mx,k=1.4)
Tx=Tt2*t4 //Static temperature before shock in K
t5=0.978 //Ratio of Stagnation temperature before shock to critical Stagnation temperature at exit from gas tables (Rayleigh flow,Mx,k=1.4)
Tox=Tto2*t5 //Stagnation temperature before shock in K
p4=1.513 //Static pressure ratio after and before the shock from gas tables @Mx 
Py=Px*p4 //Pressure after shock in kPa
t6=1.128 //Temperature ratio after and before the shock from gas tables @Mx
Ty=Tx*t6 //temperature after shock in K
t7=0.875 //Ratio of Temperature after the shock to Stagnation temperature after shock from gas tables @Mx 
Toy=Ty/t7 //Stagnation temperature after shock in K,
p5=1.207 //Ratio of pressure after shock to pressure at critical state from gas tables @My
Pt=Py/p5 //Critical pressure in kPa
t8=1.028 //Ratio of temperature after shock to temperature at critical state from gas tables @My
Tt=Ty/t8 //Critical temperature in K
t9=0.978 //Ratio of Stagnation temperature after shock to Stagnation temperature at critical state from gas tables @My
Tot=Toy/t9 //Stagnation temperature at critical state in K, calculation mistake in textbbok 
q1=Cp*(Tox-To) //Amount of heat added in upstream of shock in kJ/s
q2=Cp*(Tot-Toy) //Amount of heat added in downstream of shock in kJ/s
Q=m*(q1+q2) //Amount of heat added in two pipe section in kJ/s

//Output
printf('(A)Amount of heat added in two pipe section is %3.2f kJ/s\n (B)Properties:\n Upstream of shock:\n    Pressure is %3.1f kPa\n    Temperature is %3.3f K\n    Stagnation temperature is %3.2f K\n    Mach number is %3.1f\n Downstream of shock:\n    Pressure is %3.3f kPa\n    Temperature is %3.3f K\n    Stagnation temperature is %3.1f K\n    Mach number is %3.3f\n At the throat:\n    Pressure is %3.2f kPa\n    Temperature is %3.3f K\n    Stagnation temperature is %3.2f K\n At the exit:\n    Pressure is %3.2f kPa\n    Temperature is %3.2f K\n    Mach number is %3.2f',Q,Px,Tx,Tox,Mx,Py,Ty,Toy,My,Pt,Tt,Tot,P2,T2,M2)
