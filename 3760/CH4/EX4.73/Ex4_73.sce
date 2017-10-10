clc;
// shaft power is given little bit more than actual value in question 
w1=25;
w2=9; // spring balance readings in kg
d=19.5*10^-2; // outside pulley diameter
t=0.5*10^-2; // belt thickness
g=9.81; // acceleration due to gravity
n=1500; // motor speed
v=230; // applied voltage
il=12.5; // line current
Ts=(w1-w2)*((d/2)+(t/2))*g; 
printf('Shaft torque is %f Nm\n',Ts);
psh=(2*%pi*n*Ts)/60; 
printf('Shaft power is %f W\n',psh);
pi=v*il; // motor input
nm=(psh/pi)*100;
printf('Motor efficiency at rated load is %f percent',nm);
