
clc; funcprot(0);
// Initialization of Variable
t=3*%pi/180;//tilt
xa=-62.45;//x coordinate of a
xb=78.25;//x coorbinate of b
f=152.4;//focal length in mm
H=2500.0;//actual height in m
hb=800;//height B in m
ha=500.0;//height A in m
ya=82.25;//y coordinate of a
yb=-41.15;//y coordinate of b
s=220.0;
//calculation
theta=s-180;
ya1=xa*sin(theta*%pi/180)+ya*cos(theta*%pi/180)+f*tan(t);//ya'
xa1=xa*cos(theta*%pi/180)-ya*sin(theta*%pi/180);//xa'
xb1=xb*cos(theta*%pi/180)-yb*sin(theta*%pi/180);//xb'
yb1=xb*sin(theta*%pi/180)+yb*cos(theta*%pi/180)+f*tan(t);//yb'
Xa=xa1*(H-ha)/(f/cos(t)-ya1*sin(t));
Xb=xb1*(H-hb)/(f/cos(t)-yb1*sin(t));
Ya=ya1*cos(t)*(H-ha)/(f/cos(t)-ya1*sin(t));
Yb=yb1*cos(t)*(H-hb)/(f/cos(t)-yb1*sin(t));
AB=sqrt((Xb-Xa)**2+(Yb-Ya)**2);
disp(AB,"distance of AB in m")
clear()
