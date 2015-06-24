clc
clear

//Input data
Po=300 //Pressure in reservoir in kPa
To=500 //Temperature in reservoir in K
At=1 //Throat area in m^2
Ax=2 //Area just before the shock in m^2
Ay=2 //Area just after the shock in m^2
A2=3 //Exit area in m^2

//Calculation
a1=Ax/At //Area ratio 
Mx=2.2 //Mach number upstream of shock
p1=0.0935 //Ratio of pressure before shock to stagnation pressure before shock from gas tables @Mx
Px=p1*Po //pressure before shock in kPa
t1=0.50 //Ratio of temperature before shock to stagnation pressure before shock from gas tables @Mx
Tx=t1*To //temperature before shock in K
My=0.547 //Mach number downstream of shock 
p2=5.480 //Static pressure ratio after and before the shock from gas tables @My
Py=Px*p2 //Static pressure after shock in kPa
t2=1.857 //Temperature ratio after and before the shock from gas tables @My
Ty=t2*Tx //Temperature ratio after the shock in K
p3=6.716 //Stagnation pressure after shock to Static pressure before shock from gas tables @My
Poy=Px*p3 //Stagnation pressure after shock in kPa
Po2=Poy //Exit stagnation pressure in kPa, Since total pressure remains same after shock
t3=0.943 //Static to stagnation pressure after shock from isentropic gas tables @My
Toy=Ty/t3 //Stagnation pressure after shock in K
To2=Toy //Exit stagnation temperature in K, Since temperature remains after shock
a2=1.255 //Ratio of area after shock to throat area after shock from isentropic gas tables @My
Aty=Ay/a2 //Throat area after shock in m^2
At2=Aty //Throat area at exit in m^2
a3=A2/At2 //Areas ratio
M2=0.33 //Exit mach number from gas tables @a3
p4=0.927 //Static to Stagnation pressure at exit from gas isentropic gas tables @a3
P2=Po2*p4 //Exit pressure in kPa
t4=0.978 //Static to Stagnation temperature at exit from gas isentropic gas tables @a3
T2=To2*t4 //Exit temperature in K

//Output
printf('(A)Pressure at section (x) Px=%3.2f kPa\n (B)Pressure at section (y) Px=%3.3f kPa\n (C)Stagnation pressure at section (y) Poy=%3.2f kPa\n (D)Throat area of cross section at section (y) Aty=%3.4f m^2\n (E)Stagnation pressure at exit Po2=%3.2f kPa\n (F)Throat area of cross section at exit At2=%3.4f m^2\n (G)Static Pressure at exit P2=%3.2f kPa\n (H)Stagantion temperature at exit To2=%3i K\n (I)Temperature at exit T2=%3i k',Px,Py,Poy,Aty,Po2,At2,P2,To2,T2)
