clc
clear

//Input data
Mx=3 //Mach number before the shock 
Tx=27+273 //Temperature before the shock in K
Px=1 //Pressure before the shock in bar
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K
 
//Calculation
My=0.475 //Mach number after the shock from gas tables @Mx
p1=10.333 //Static pressure ratio after and before the shock from gas tables @My
Py=p1*Px //Static pressure after shock in bar
t1=2.679 //Temperature ratio after and before the shock from gas tables @My
Ty=Tx*t1 //Temperature ratio after the shock in K
p2=12.061 //Stagnation pressure after shock to Static pressure before shock from gas tables @My
Poy=p2*Px //Stagnation pressure after shock in bar
p3=0.328 //Stagnation pressure ratio after and before the shock from gas tables @My
Pox=Poy/p3 //Stagnation pressure before shock in kPa
ay=sqrt(k*R*Ty) //Velocity of sound after the shock in m/s
Cy=ay*My //Velocity of air after the shock in m/s
ds=R*log(1/p3) //Change in entropy in J/kg-K
e=(Py-Px)/Px //Strength of shock

//Output
printf('(I)Downstream of the shock:\n    (A)Pressure is %3.3f bar\n    (B)Temperature is %3.1f K\n    (C)Gas velocity is %3.2f m/s\n    (D)Mach number is %3.3f\n (II)Total head pressure ratio is %3.3f\n (III)Entropy change across the shock is %3.3f J/kg-K\n (IV)Strength of the shock is %3.3f',Py,Ty,Cy,My,p3,ds,e) 
