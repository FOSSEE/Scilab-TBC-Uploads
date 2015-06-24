clc
clear

//Input data
def=15
M1=2
k=1.4

//Calculation
//Using relation def=atand(((M1^2*sind(2*sig))-(2/tand(sig)))/(2+(M1^2*(k+cosd(2*sig))))) and converting into 6th degree polynomial of sind(sig)=x
C=((2*tand(def))+((M1^2)*k*tand(def))+((M1^2)*tand(def))) //Constant value for convenience
D=(2*M1^2*tand(def)) //Constant value for convenience
a=4 //Value of constant in polynomial  
b=0 //Coefficient of power 1 i.e. x^1
c=(4+C^2+(8*M1^2)) //Coefficient of power 2 i.e. x^2
d=0 //Coefficient of power 3 i.e. x^3
e=(4*(M1^4))+(2*C*D)+(8*M1^2) //Coefficient of power 4 i.e. x^4
f=0 //Coefficient of power 5 i.e. x^5
g=(4*M1^4)+D^2 //Coefficient of power 6 i.e. x^6
p4=poly([a b -c -d e f -g],'x','c') //Expression for solving 6th degree polynomial
disp('Values for sine of wave angle are:\n')
disp(roots(p4))
sig1=asind(0.9842) //Strong shock wave angle in degree, nearer to 90 degree
sig2=asind(0.7113) //Weak shock wave angle in degree, nearer to 45 degree
//(a)Strong Shock Wave
Mx_1=M1*sind(sig1) //Mach number before the shock of stong shock wave
My_1=0.584 //Mach number after the shock from gas tables @Mx_1
p1=4.315 //Static pressure ratio after and before the shock from gas tables @Mx_1
t1=1.656 //Static temperature ratio after and before the shock from gas tables @Mx_1
d1=p1/t1 //Density ratio after and before the shock of stong shock wave
M2_1=My_1/(sind(sig1-def)) //Exit mach number of stong shock wave
Mx_2=M1*sind(sig2) //Mach number before the shock of weak shock wave
My_2=0.731 //Mach number after the shock from gas tables @Mx_2
p2=2.186 //Static pressure ratio after and before the shock from gas tables @Mx_2
t2=1.267 //Static temperature ratio after and before the shock from gas tables @Mx_2
d2=p2/t2 //Density ratio after and before the shock of weak shock wave
M2_2=My_2/(sind(sig2-def)) //Exit mach number of weak shock wave

//Output 
printf('\nStrong Shock Wave:\n    (A)Wave angle is %3.1f degree\n    (B)Pressure ratio is %3.3f\n    (C)Density ratio is %3.3f\n    (D)Temperature ratio is %3.3f\n    (E)Downstream Mach number is %3.3f\n Weak Shock Wave:\n    (A)Wave angle is %3.1f degree\n    (B)Pressure ratio is %3.3f\n    (C)Density ratio is %3.3f\n    (D)Temperature ratio is %3.3f\n    (E)Downstream Mach number is %3.3f',sig1,p1,d1,t1,M2_1,sig2,p2,d2,t2,M2_2)
