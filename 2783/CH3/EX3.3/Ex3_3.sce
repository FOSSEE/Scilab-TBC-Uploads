clc
//initialization of new variables
clear
d=5 //m  depth
h=11 //m     where traingle base is located
rho=1000 //kg/m^3  density
g=9.8 //m/s^2  Acceleration due to gravity
s=6 //m  from figure
theta=30 //degrees
k=8 //m from the figure
kk=4 //m  from the figure
b=6 //m from the figure
//calculations
theta=theta*%pi/180
h_bar=d+k*sin(theta)
p=rho*g*h_bar
S=0.5*b*(kk+k)
Fz=-p*S
Ixx=b*(kk+k)^3/36
Ixy=b*(b-2*s)*(kk+k)^2/72
y_bar=h_bar/sin(theta)
X=Ixy/(y_bar*S)
Y=Ixx/(y_bar*S)
//results
printf('Force = %.3e N',Fz)
printf('\n coordinates of center of pressure relative to centroid are \n (X, Y) = (%.3f, %.3f) m',X,Y)
