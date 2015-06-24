//Page Number: 93
//Example 2.4
clc;
//Given,
c=3D+8; //m/s
f=10D+9; //Hz
zte=410; //ohm

//Wider dimension
lam=c/f;//m
lam=lam*100;//cm
a=3/(2*(sqrt(1-(120*%pi/zte)^2)));
disp('cm',a,'Wider dimension:');
