clc
clear

//Input data
Tx=350 //Temperature before the shock in K
Px=137.8 //Pressure before the shock in kPa
Cx=750 //Velocity before the shock in m/s
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K

//Calculation
ax=sqrt(k*R*Tx) //Velocity of sound before the shock in m/s
Mx=Cx/ax //Mach number before the shock
My=0.577 //Mach number after the shock from gas tables @Mx
p1=4.5 //Static pressure ratio after and before the shock from gas tables @My
Py=Px*p1 //Static pressure after shock in kPa
t1=1.687 //Temperature ratio after and before the shock from gas tables @My
Ty=Tx*t1 //Temperature ratio after the shock in K
p2=5.641 //Stagnation pressure after shock to Static pressure before shock from gas tables @My
Poy=Px*p2 //Stagnation pressure after shock in kPa
p3=0.721 //Stagnation pressure ratio after and before the shock from gas tables @My
Pox=Poy/p3 //Stagnation pressure before shock in kPa
ds=R*log(1/p3) //Change in entropy in J/kg-K
t2=0.555 //Static to Stagnation temperature ratio before shock from isentropic gas tables @Mx,k=1.4
Tox=Tx/t2  //Stagnation temperature before shock in K
p4=0.128 //Static to Stagnation pressure ratio from isentropic gas tables @Mx,k=1.4
Pox=Px/p4 //Stagnation pressure in kPa
t4=0.937 //Static to Stagnation temperature ratio before shock from normal shock gas tables @Mx,k=1.4 (Tox=Toy Checked)
Toy=Ty/t4 //Stagnation temperature after shock in K
ay=sqrt(k*R*Ty) //Velocity of sound after the shock in m/s
Cy=(My*ay) //Velocity of gas after the shock in m/s

//Output
printf('(A)At inlet to shock:\n    Stagnation pressure is %3.1f kPa\n    Stagnation temperature is %3.2f K\n    Mach number is %3.0f\n (B)After shock:\n    Stagnation pressure is %3.2f kPa\n    Stagnation temperature is %3.2f K\n    Static pressure is %3.1f kPa\n    Static temperature is %3.2f K\n    Mach number is %3.3f\n    Velocity is %3.2f m/s\n (C)Change in entropy across the shock is %3.2f J/kg-K',Pox,Tox,Mx,Poy,Toy,Py,Ty,My,Cy,ds)
