clc
clear
//Initialization of variables
Pi=90 //psi
L=5/12 //ft
r=5 //in
x=1.5 //ft
rpm=1500 //rpm
//calculations
A=%pi*x*x
N=rpm*4/2
Ihp=Pi*L*A*N/33000
//results
printf("IHP of cylinder = %d",Ihp)
