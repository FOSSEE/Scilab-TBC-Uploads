clc;
clear;
v1=100;//ft/sec
v0=20;//ft/sec
ang=45;//degrees
A1=0.006;//ft^2
l=1;//ft
//m1=m2=m; continuity equation
//d=density of water= constant
//w=speed of water relative to the moving control volume=constant=w1=w2
//w1=v1-v0
w=v1-v0;
d=1.94;//slugs/ft^3
//-Rx=(w1)(-m1)+(w2cos(ang))(m2)
Rx=d*(w^2)*A1*(1-cos(ang*%pi/180));
//wwater=(specific wt of water)*A1*l
wwater=62.4*A1*l;
Rz=(d*(w^2)*(sin(ang*%pi/180))*A1)+wwater;
R=((Rx^2)+(Rz^2))^0.5;
angle=(atan(Rz/Rx))*180/(%pi);
disp("lb",R,"The force exerted by stream of water on vane surface=")
disp("degrees",angle,"The force points right and down from the x direction at an angle of=")
