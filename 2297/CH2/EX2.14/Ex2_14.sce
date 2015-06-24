// Example 2.14 :circuit elements
clc;
close;
format('v',6)
// given :
//v=311*sin(2500*t+170) V voltage equation
//I=15.5*sin(2500*t-145)A current equation
vm=311/sqrt(2);//voltage in volts
va=170;//angle in degree
im=15.5/sqrt(2);//current in amperes
ia=-145;//angle in degree
zm=vm/im;//resistance in ohms
za=(va-ia)-360;//resistance ohms
z1=zm*cosd(za);//resistance in ohms
z2=zm*sind(za);//resistance in ohms
z=z1+%i*z2;//resistance in ohms
t=2500;//time in seconds
c=(1/(real(z)*t));//capacitance in farads
disp(z,"Impedance is ,(Ohm)=")
disp(c*10^6,"capacitance is ,(micro-farads)=")

