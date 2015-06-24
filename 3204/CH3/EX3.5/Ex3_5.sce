//Initilization of variables
W=1000 //N
Lad=7.5 //m
Lae=1.5 //m
La1=3.75 //m //distance of 1st 1000N load from pt A
La2=5 //m //distance of 2nd 1000N load from pt A
La3=6 //m // distance of 3rd 1000N load from pt A
// Calculations (part1)
//using matrix to solve the given eqn's 1 & 2
A=[1 -2.5;3.5 -5]
B=[1000;7250]
C=inv(A)*B
//Calculations (part 2)
//Consider combined F.B.D of beams AB,BC &CD. Take moment at A
Re=((W*La1)+(W*La2)+(W*La3)+(C(2)*Lad)-(C(1)*La3))/Lae //N
Ra=C(2)-Re-C(1)+(3*W) //N //Taking sum of forces in Y direction
//Results
clc
printf('The reaction at F i.e Rf is %f N \n',C(1))
printf('The reaction at D i.e Rd is %f N \n',C(2))
printf('The reaction at pt E i.e Re is %f N \n',Re)
printf('The reaction at pt A i.e Ra is %f N \n',Ra) //acting vertically downwards
