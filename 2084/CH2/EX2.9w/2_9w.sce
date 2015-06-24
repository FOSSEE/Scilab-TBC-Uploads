//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.9w
//calculation of angle between two vectors 

//given data
ax=2; //xcomponent of A vector
ay=3; //ycomponent of A vector
az=4; //zcomponent of A vector

bx=4; //xcomponent of B vector
by=3; //ycomponent of B vector
bz=2; //zcomponent of B vector

//calculation
adotb=((ax*bx)+(ay*by)+(az*bz));
a=sqrt((ax*ax)+(ay*ay)+(az*az));
b=sqrt((bx*bx)+(by*by)+(bz*bz));
theta=acosd(adotb/(a*b)); //formula of dot product

disp(theta,' angle(in degree) between given two vectors is')
