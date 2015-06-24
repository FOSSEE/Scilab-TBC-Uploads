clc;funcprot(0);....//EXAMPLE 10.6
//Initialization of Variables
Tb1=500;..........//Boundary temperature in degrees celsius at the top face
Tb2=500;..........//Boundary temperature in degrees celsius at the bottom face
Tb3=100;..........//Boundary temperature in degrees celsius at the left face
Tb4=100;..........//Boundary temperature in degrees celsius at the right face
delx=0.5;.........//Discretization size along x direction in m
dely=0.5;.........//Discretization size along y direction in m
x1=1;x2=2;x3=1;x4=2;........//X-coordinates of all the four interior grid points
y1=2;y2=2;y3=1;y4=1;........//Y-coordinates of all the four interior grid points
//Calculations
T21=0;T01=0;T12=0;T10=0;T02=0;T03=0;.....//On the basis of boundary conditions as shown in figure
//The governing equation is discritised as [(T(i+1,j)-2T(i,j)+T(i-1,j))/delx^2]+[(T(i,j+1)-2T(i,j)+T(i,j-1))/dely^2]
//We apply this discritisation equation to all the four points

c11=-4;.....//Co effieicnt of T1 in equation 1
c12=1;......//Co effieicnt of T1 in equation 2
c13=1;......//Co effieicnt of T1 in equation 3
c14=0;......//Co effieicnt of T1 in equation 4
c21=1;......//Co effieicnt of T2 in equation 1
c22=-4;.....//Co effieicnt of T2 in equation 2
c23=0;......//Co effieicnt of T2 in equation 3
c24=1;......//Co effieicnt of T2 in equation 4
c31=1;......//Co effieicnt of T3 in equation 1
c32=0;......//Co effieicnt of T3 in equation 2
c33=-4;......//Co effieicnt of T3 in equation 3
c34=1;......//Co effieicnt of T3 in equation 4
c41=0;......//Co effieicnt of T4 in equation 1
c42=1;......//Co effieicnt of T4 in equation 2
c43=1;......//Co effieicnt of T4 in equation 3
c44=-4;......//Co effieicnt of T4 in equation 4
M=[c11,c12,c13,c14;c21,c22,c23,c24;c31,c32,c33,c34;c41,c42,c43,c44];.......//Matrix
B=[-Tb1-Tb3;-Tb1-Tb3;-Tb1-Tb3;-Tb1-Tb3];....//Boundary conditions Temperature matrix
T=inv(M)*B;
disp(T,"The steady state temperatures(In degree Celsius) at the four interfaces T1,T2,T3 and T4 respectively as shown in the figure are :")
