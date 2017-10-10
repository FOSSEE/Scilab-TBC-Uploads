//equation 
clc;
//Test/Tefl=1.5;
d=1.5;
//Tem/Tefl=2.5;
e=2.5;

//for part a

//d=Test/Tefl;
//equation of torque gives following equation
Q=[1 -3.33 1];
R=roots(Q);
smT=R(2);
mprintf('The slip at maximun torque is %f \n',smT)

//for part b
//equation of torque gives
Q=[1 -1.665 0.111];
R=roots(Q);
sfl=R(2);
mprintf('The slip at full load is %f \n',sfl)

//for part c
//I2st=c*Isfl As per torque equation 
c=sqrt((d)*(1/sfl));
mprintf('The rotor current = %f times full load current \n',c)
