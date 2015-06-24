//Initilization of variables
g=9.8 //m/s^2
//Calculations
//Simplfying the equations we can solve for T2 and aA first to obtain the solution
//Solving by matrix method
A=[-1.5,-4;-3.5,24]
B=[-4*g;-24*g]
C=inv(A)*B 
T2=C(1) //N
T1=T2/2 //N
T3=T2/2 //N
//Acceleration calculations
a1=1*g-T1 //m/s^2
a2=(2*g-T1)/2 //m/s^2
a3=(3*g-T3)/3 //m/s^2
a4=(4*g-T3)/4 //m/s^2
//Tension in fixed cord
T_f=2*T2 //N
//Result
clc
printf('The acceleration values are a1=%f,a2=%f,a3=%f and a4=%f m/s^2\n The tension in the fixed cord is %fN',a1,a2,a3,a4,T_f)
