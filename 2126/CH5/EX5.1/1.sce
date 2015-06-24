clc
clear

//Input data
Px=150 //Pressure before the shock in kPa
Tx=25+273 //Temperature before the shock in K
Py=350 //Pressure just after the shock in kPa
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K

//Calculations
p1=Py/Px //Pressure ratio 
Mx=1.4638 //Mach number before the shock
My=0.716 //Mach number after the shock from gas tables @Mx
t1=1.294 //Temperature ratio after and before the shock from gas tables @p1
Ty=t1*Tx //Temperature ratio after the shock in K
ax=sqrt(k*R*Tx) //Velocity of sound before the shock in m/s
Cx=ax*Mx //Velocity of gas before the shock in m/s
ay=sqrt(k*R*Ty) //Velocity of sound after the shock in m/s
Cy=ay*My //Velocity of gas after the shock in m/s
p2=0.942 //Stagnation pressure ratio after and before the shock from gas tables @p1
ds=R*log(1/p2) //Change in entropy in J/kg-K
p3=3.265 //Stagnation pressure after shock to Static pressure before shock from gas tables @p1
Poy=p3*Px //Stagnation pressure after shock in kPa
Pox=Poy/p2 //Stagnation pressure before shock in kPa
pr_loss=Pox-Poy //Loss of stagnation pressure of air in kPa
dd=(1000/R)*((Py/Ty)-(Px/Tx)) //Increase in density of air in kg/m^3

//Output
printf('(A)Mach number before shock is %3.4f\n (B)After shock:\n    Mach number is %3.3f\n    Static temperature is %3.3f K\n    Velocity is %3.2f m/s\n (C)Increase in density of air is %3.2f kg/m^3\n (D)Loss of stagnation pressure of air is %3.2f kPa\n (E)Change in entropy is %3.3f J/kg-K',Mx,My,Ty,Cy,dd,pr_loss,ds)
