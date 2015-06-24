//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.7w
//calculation of unit vector

//given data
ax=5; //x component of A vector
ay=1; //y component of A vector
az=-2; //z component of A vector

//calculation
A=sqrt((ax*ax)+(ay*ay)+(az*az));
uax=ax/A; //x component of unit vector of A vector
uay=ay/A; //y component of unit vector of A vector
uaz=az/A; //z component of unit vector of A vector

disp(uax,'x component of unit vector of A vector');
disp(uay,'y component of unit vector of A vector');
disp(uaz,'z component of unit vector of A vector');
