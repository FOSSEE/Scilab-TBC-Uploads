clc;funcprot(0);....//EXAMPLE 10.5
//Initialization of Variables
t=0.12;.......//Slab thickness in m
K=30;.........//Thermal conductivity in W/mK
q=10^6;........//Energy generation inside the slab ain W/m^3
Tb=150;........//Boundary temperature at x = 0.12 in degree celsius
n=4;.......//No of discrete units
delx = t/n;....//Length of discretized piece
//Calculations
//The governing equation is  T(i+1)-2T(i)+T(i-1) +[delx^2 * q]/K = 0
//We apply this equation to all the four discritized slab units
C=[delx^2 * q]/K;..........// The value of [delx^2 * q]/K in the governing equation
c11=-2;.....//Co effieicnt of T1 in equation 1
c12=2;......//Co effieicnt of T1 in equation 2
c13=0;......//Co effieicnt of T1 in equation 3
c14=0;......//Co effieicnt of T1 in equation 4
c21=1;......//Co effieicnt of T2 in equation 1
c22=-2;.....//Co effieicnt of T2 in equation 2
c23=1;......//Co effieicnt of T2 in equation 3
c24=0;......//Co effieicnt of T2 in equation 4
c31=0;......//Co effieicnt of T3 in equation 1
c32=1;......//Co effieicnt of T3 in equation 2
c33=-2;......//Co effieicnt of T3 in equation 3
c34=1;......//Co effieicnt of T3 in equation 4
c41=0;......//Co effieicnt of T4 in equation 1
c42=0;......//Co effieicnt of T4 in equation 2
c43=1;......//Co effieicnt of T4 in equation 3
c44=-2;......//Co effieicnt of T4 in equation 4
M=[c11,c12,c13,c14;c21,c22,c23,c24;c31,c32,c33,c34;c41,c42,c43,c44];.......//Matrix
B=[-C;-C;-C;-C-Tb];....//Boundary conditions Temperature matrix
T=inv(M)*B;
disp(T,"The steady state temperatures(In degree Celsius) at the four interfaces T1,T2,T3 and T4 respectively as shown in the figure are :")
