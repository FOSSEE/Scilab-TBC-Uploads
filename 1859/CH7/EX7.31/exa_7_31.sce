// Exa 7.31
clc;
clear;
close;
// Given data
f1= 1;// in MHz
f1=f1*10^6;// in Hz
f2= 2;// in MHz
f2=f2*10^6;// in Hz
C1=480;// in pF
C1=C1*10^-12;// in F
C2=90;// in pF
C2=C2*10^-12;// in F
R=10;// in ohm
omega1= 2*%pi*f1;// in radians/sec
omega2= 2*%pi*f2;// in radians/sec

// Part (i)
Cd= (C1-4*C2)/3;// in F
disp(Cd*10^12,"Self capacitance of the coil in pF")

// Part(ii)
Q_indicated1= 1/(omega1*(C1+Cd)*R);
disp(Q_indicated1,"Indicated or effective Q for first measurement")
Q_True1=  1/(omega1*C1*R);
disp(Q_True1,"True Q for first measurement is ");
Q_indicated2= 1/(omega2*(C2+Cd)*R);
disp(Q_indicated2,"Indicated or effective Q for second measurement")
Q_True2=  1/(omega2*C2*R);
disp(Q_True2,"True Q for second measurement is ");
