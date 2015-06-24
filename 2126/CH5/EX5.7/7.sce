clc
clear

//Input data
Po=800 //Pressure in reservoir in kPa
To=40+273 //Temperature in reservoir in K
M2a=2.5 //Mach number at exit from diagram
At=25 //Throat Area in cm^2 
Ax=40 //Area just before the shock in cm^2
Ay=40 //Area just after the shock in cm^2
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
t1=0.834 //Ratio of critical temperature and stagnation temperature from gas tables @M=1
Tt=To*t1 //Critical temperature in K
p1=0.528 //Ratio of critical pressure and stagnation pressure from gas tables @M=1
Pt=Po*p1 //Critical pressure in kPa
dt=Pt*10^3/(R*Tt) //Density in kg/m^3, Pt in Pa
at=sqrt(k*R*Tt) //Velocity of sound at throat in m/s
Ct=at //Air Velocity of sound at throat in m/s
m=dt*At*10^-4*Ct //Mass flow rate in kg/s
p2=0.0585 //Ratio of exit to stagnation pressure from isentropic gas tables @M2=2.5
a1=2.637 //Ratio of exit to critical area from isentropic gas tables @M2=2.5
A2=a1*At //Exit area in cm^2
a2=Ax/At //Area ratio
M=1.94 //Mach number upstream of shock from gas tables @a2
p3=0.140 //Ratio of upstram of shock to stagnation pressures from isentropic gas tables @M
Px=p3*Po //Pressure upstram of shock in kPa
t2=0.570 //Ratio of upstram of shock to stagnation temperature from isentropic gas tables @M
Tx=t2*To //Temperature upstram of shock in K
My=0.588 //Mach number downstream of shock from normal shock gas tables @M
p4=4.225 //Static pressure ratio after and before the shock from gas tables @My
Py=Px*p4 //Static pressure after shock in kPa
t3=1.639 //Temperature ratio after and before the shock from gas tables @My
Ty=Tx*t3 //Temperature ratio after the shock in K
p5=2.338 //Stagnation pressure after shock to Static pressure before shock from gas tables @My
Poy=p5*Px //Stagnation pressure after shock in kPa
p6=0.749 //Stagnation pressure ratio after and before the shock from gas tables @My
Pox=Poy/p6 //Stagnation pressure before shock in kPa 
//Here At2=Aty, Po2=Poy, Toy=To2=To1=To
p7=0.79 //Static to stagnation pressure ratio after shock from isentropic gas tables @My
Po2=Py/p7 //Stagnation pressure at exit in kPa
t4=0.935 //Static to stagnation temperature ratio after shock from isentropic gas tables @My
To2=Ty/t4 //Stagnation temperature in K (checked)
a3=1.2 //Ratio of areas after shock i.e. (Ay/At2)
At2=Ay/a3 //Critical area after shock in cm^2
a4=A2/At2 //Ratio of areas 
M2b=0.31 //Mach number at exit from gas tables @a4(as per section-b)
p8=0.936 //Static to stagnation pressure ratio at exit from isentropic gas tables @M2b
P2=Po2*p8 //Exit pressure in kPa
t5=0.981 //Static to stagnation temperature ratio after shock from isentropic gas tables @M2b
T2=To2*t5 //Exit temperature in K

//Output
printf('CASE-I:\n    (A)Mass flow rate is %3.2f kg/s\n    (B)Exit area is %3.1f cm^2\n CASE-II:\n    (A)Temperature is %3.3f K\n    (B)Pressure is %3.1f kPa',m,A2,T2,P2)
