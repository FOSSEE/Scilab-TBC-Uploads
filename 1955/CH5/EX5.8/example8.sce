clc
clear
//input data
Ca=180//Air velocity at the exit of nozzle in m/s
a1=(90-27)//Nozzle inclination perpendicular to direction of rotation in degree
R=0.5//Degree of reaction
U=180//Blade speed in m/s

//calculations
Cx1=Ca*tand(a1)//Inlet whirl velocity in m/s
b11=atand((Cx1-U)/Ca)//Inlet angle of the rotor blade at inlet velocity triangle in degree
pi=Ca/U//Ratio of air velocity and blade velocity 
b21=atand((2*R/pi)+tand(b11))//Outlet angle of the rotor blade at inlet velocity triangle in degree
C2=Ca//Exit velocity of the steam in m/s
b22=atand(U/C2)//Outlet angle of the rotor blade at outlet velocity triangle in degree
b12=b11//Inlet angle of the rotor blade at outlet velocity triangle in degree as np change in rotor inlet conditions 
R=(pi*(tand(b22)-tand(b12)))/2//Degree of reaction 

//output
printf('(a)blade angles\n    Inlet angle of the rotor blade at inlet velocity triangle is %3.1f degree\n    Outlet angle of the rotor blade at inlet velocity triangle is %3.f degree\n(b)Degree of reaction is %3.4f\n(c)Inlet angle of the rotor blade at outlet velocity triangle is %3.f degree\n(d)Outlet angle of the rotor blade at outlet velocity triangle is %3.1f degree',b11,b21,R,b22,b12)
