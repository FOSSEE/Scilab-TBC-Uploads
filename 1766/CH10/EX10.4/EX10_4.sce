clc;funcprot(0);....//EXAMPLE 10.4
//Initialization of Variables
Tb1=0;..........//Boundary temperature in degrees celsius along x axis
Tb2=0;..........//Boundary temperature in degrees celsius along y axis
Tb3=0;..........//Boundary temperature in degrees celsius
Tb4=100;..........//Boundary temperature in degrees celsius
delx=0.5;.........//Discretization size along x direction in m
dely=0.5;.........//Discretization size along y direction in m
x1=1;x2=1;x3=1;........//X-coordinates of all the three interior grid points
y1=1;y2=2;y3=3;........//Y-coordinates of all the three interior grid points
//Calculations
T21=0;T01=0;T12=0;T10=0;T02=0;T03=0;.....//On the basis of boundary conditions as shown in figure
//The governing equation is discritised as [(T(i+1,j)-2T(i,j)+T(i-1,j))/2delx]+[(T(i,j+1)-2T(i,j)+T(i,j-1))/2dely]
//We apply this discritisation equation to all the three points
c11=-4;.....//Co effieicnt of T11 in equation 1
c12=1;......//Co effieicnt of T11 in equation 2
c13=0;......//Co effieicnt of T11 in equation 3
c21=1;......//Co effieicnt of T12 in equation 1
c22=-4;.....//Co effieicnt of T12 in equation 2
c23=1;......//Co effieicnt of T12 in equation 3
c31=0;......//Co effieicnt of T13 in equation 1
c32=1;......//Co effieicnt of T13 in equation 2
c33=-4;......//Co effieicnt of T13 in equation 3
M=[c11,c12,c13;c21,c22,c23;c31,c32,c33];.......//Matrix
B=[Tb1;Tb2;-Tb4];....//Boundary conditions Temperature matrix
T=inv(M)*B;
disp(T,"The steady state temperatures(In degree Celsius) at the three interior points (1,1), (1,2) and (1,3) in respectively are :")
