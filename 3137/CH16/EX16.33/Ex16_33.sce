//Initilization of variables
mA=30 //kg
mB=45 //kg
u_ab=1/3 //coefficient of friction between two blocks
u_bp=1/10 //coefficient of friction between block and horizontal plane
g=9.8 //m/s^2
//Calculations
//By inspection
Na=mA*g //N
Nb=Na+mB*g //N
a=(u_ab*Na-u_bp*Nb)/mB //m/s^2
P=(mA*a+u_ab*Na) //N
//For block A
//Solving for P,F and a
A=[1,-1,-mA;-0.05,-0.075,0;0,1,-mB]
B=[0;-Na*0.050;Nb*u_bp]
C=inv(A)*B
P_new=C(1) //N
//Result
//As p < p_new
clc
printf('The maximum value of P is %f N',P)
