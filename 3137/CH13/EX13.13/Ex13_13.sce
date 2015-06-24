//Initilization of variables
P=70 //N
m_A=16 //kg
u_AH=0.25 //coefficient of friction between Block A and Horizontal Plane
m_B=4 //kg
u_BH=0.5 //coefficient of friction between Block B and Horizontal Plane
theta=10 //degrees
g=9.8 //m/s^2
//Calculations
//Applying sum of forces to both the FBD's
//Solving by matrix method 
A=[-cosd(theta),-u_AH,-m_A,0;-sind(theta),1,0,0;cosd(theta),0,-m_B,-u_BH;sind(theta),0,0,1] 
B=[-P;m_A*g;0;m_B*g]
C=inv(A)*B //Ans
//Result
clc
printf('The Value of T is %fN',C(1) )
