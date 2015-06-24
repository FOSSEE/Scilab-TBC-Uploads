clc
clear

//Input data
T=300 //Temperature in K
P=1.5 //Pressure in bar
C_y=150 //Air velocity just inside the shock in m/s
k=1.4 //Adiabatic constant 
R=287 //Specific gas constant in J/kg-K
  
//Calculation
ax=sqrt(k*R*T) //Velocity of sound before the shock in m/s
Mx=sqrt(((C_y*(k+1))/(2*ax))+1) //Mach number before the shock
My=0.79 ////Mach number after the shock from normal shock gas tables 
Cx=Mx*ax //Velocity of gas before the shock in m/s
p1=1.775 //Stagnation pressure ratio after and before the shock from gas tables @My
Py=P*p1 //Pressure just after the shock in bar
t1=1.1845 //Temperature ratio after and before the shock from gas tables @My
Ty=T*t1 //Temperature ratio after the shock in K
ay=sqrt(k*R*Ty) //Velocity of sound after the shock in m/s
Csh=My*ay //Speed of the wave in m/s

//Output 
printf('(A)Speed of the wave is %3.1f m/s\n (B)At rest condition:\n    Pressure is %3.4f bar\n    Temperature is %3.2f K',Csh,Py,Ty)
