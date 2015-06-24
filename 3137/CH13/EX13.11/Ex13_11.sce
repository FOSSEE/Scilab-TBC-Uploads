//Initilization of variables
m_A=20 //lb
m_B=60 //lb
u=0.3 //coefficient of friction
t=4 //s
theta1=30 //degrees
theta2=60 //degrees
g=32.2 //ft/s^2
vo=0 //ft/s
//Calculations
N1=m_A*cosd(theta1) //lb
N2=m_B*cosd(theta2) //lb
//Solving for T and a using matrix method
A=[1,-m_A/g;-1,-m_B/g]
B=[(m_A*sind(theta1)+u*N1);(-m_B*sind(theta2)+u*N2)] 
C=inv(A)*B
a=C(2) //ft/s^2
v=vo+a*t //ft/s
//Result
clc
printf('The velocity is %fft/s',v)
