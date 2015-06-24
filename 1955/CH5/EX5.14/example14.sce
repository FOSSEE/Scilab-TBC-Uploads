clc
clear
//input data
a1=(90-30)//Nozzle angle in axial direction in degree
Ca=180//Axial velocity in m/s
U=280//Rotor blade speed in m/s
R=0.25//Degree of reaction

//calculations
Cx1=Ca*tand(a1)//Velocity of whirl at inlet in m/s
b1=atand((Cx1-U)/Ca)//Blade angle at inlet in degree
b2=a1//Blade angle at exit in degree as degree of reaction is 0.5

//output
printf('(a)Blade angle at inlet is %3i degree\n(b)Blade angle at exit is %3i degree',b1,b2)
