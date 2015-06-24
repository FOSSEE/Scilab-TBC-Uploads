//Initilization of variables
v_o=0 //ft/s
v_f1=30 //ft/s
v_f2=0 //ft/s
t1=3 //s
t2=2 //s
//Calculations
//Plotting the v-t curve
//Velocity matrix 
v=[v_o,v_f1,v_f2]
//Time matrix
t=[0,3,5]
plot(t,v)
xlabel('t')
ylabel('v')
//Part "b"
//Acceleration at 3s
a1=(v_f1-v_o)/t1 //ft/s^2
//Acceleration at 5s
a2=(v_f2-v_f1)/t2 //ft/s^2
//Part "c"
s=(v_f1*t1*0.5)+(v_f1*t2*0.5) //ft
//Part "d"
//Simplfying the equation we get
//7.5t^2-30t+5=0
a=7.5
b=-30
c=5
q=sqrt(b^2-4*a*c)
x1=(-b+q)/(2*a)
x2=(-b-q)/(2*a)
//As x1 is greater than 2 it does not hold as a solution
t=x2 //s
//Hence total time is
T=t1+t //s
clc
//Result
printf('The acceleration at 3s and 5s are %f ft/s^2 and %f  ft/s^2 respectively\n',a1,a2)
printf('The displacement is %f ft\n',s)
printf('The total time is %f s',T)
