clc
clear

//Input data
M1=2 //Inlet mach number 
sig=40 //Shock wave angle in degree
Px=0.5 //Pressure upstream of shock in bar
Tx=273 //Temperature upstream of shock in K
k=1.4 //Adiabatic constant 

//Calculation
Mx=M1*sind(sig) //Mach number before the shock
My=0.796 //Mach number after the shock from gas tables @Mx
p1=1.745 //Static pressure ratio after and before the shock from gas tables @Mx 
Py=p1*Px //Pressure after shock in bar
t1=1.178 //Static temperature ratio after and before the shock from gas tables @Mx 
Ty=Tx*t1 //Temperature after shock in K
Ws=atand(((M1^2*sind(2*sig))-(2/tand(sig)))/(2+(M1^2*(k+cosd(2*sig))))) //Wedge semi angle in degree
W=2*Ws //Wedge angle in degree

//Output
printf('(A)Static pressure is %3.4f bar\n (B)Temperature behind the wave is %3.2f K\n (C)Mach number of flow passing over wedge is %3.3f\n (D)Wedge angle is %3.2f degree',Py,Ty,Mx,W)
