//Initilization of vaiables
W=25 //N // self weight of the ladder
M=75 //N // weight of the man standing o the ladder
theta=63.43 //degree // angle which the ladder makes with the horizontal
alpha=30 //degree // angle made by the string with the horizontal
Loa=2 //m // spacing between the wall and the ladder
Lob=4 //m //length from the horizontal to the top of the ladder touching the wall(vertical)
//Calculations
//Using matrix to solve the simultaneous eqn's 3 & 4
A=[2 -4;1 -0.577]
B=[100;100]
C=inv(A)*B
//Results
clc
printf('The reaction at A i.e Ra is %f N \n',C(1))
printf('The reaction at B i.e Rb is %f N \n',C(2))
//Calculations
T=C(2)/cosd(alpha) //N // from (eqn 1)
//Results
printf('The required tension in the string is %f N \n',T)
