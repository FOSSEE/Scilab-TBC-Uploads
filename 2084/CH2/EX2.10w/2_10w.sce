//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 2.10w
//calculation of value of the given scalar

//given data
ax=2; //xcomponent of A vector
ay=-3; //ycomponent of A vector
az=7; //zcomponent of A vector

bx=1; //xcomponent of B vector
by=0; //ycomponent of B vector
bz=2; //zcomponent of B vector

cx=1; //xcomponent of C vector
cy=0; //ycomponent of C vector
cz=2; //zcomponent of C vector

//calculation
//D=B*C
dx=(by*cz)-(cy*bz);
dy=-((bx*cz)-(cx*bz));
dz=(bx*cy)-(cx*by);

//R=A.(B*C)
R=(ax*dx)+(ay*dy)+(az*dz);

disp(R,'value of the given scalar is'); 
