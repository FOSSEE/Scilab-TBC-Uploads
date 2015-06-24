//CHAPTER 9 ILLUSRTATION 5 PAGE NO 252
//TITLE:CAMS AND FOLLOWERS
clc
clear
pi=3.141
N=1000//    speed of cam in rpm
w=2*pi*N/60//  angular speed in rad/s
s=2.5//   stroke of the follower in cm
THETA=120*pi/180//  ANGULAR DISPLACEMENT OF CAM DURING OUTSTROKE IN RAD
THETAR=90*pi/180//ANGULAR DISPLACEMENT OF CAM DURING DWELL IN RAD
Vo=2*w*s/THETA//   Maximum velocity of follower during outstroke in cm/s
Vr=2*w*s/THETAR//Maximum velocity of follower during return stroke in cm/s
Fo=4*w^2*s/THETA^2//Maximum acceleration of follower during outstroke in m/s^2
Fr=4*w^2*s/THETAR^2//Maximum acceleration of follower during return stroke in m/s^2
printf('Maximum acceleration of follower during outstroke =%.3f m/s^2\nMaximum acceleration of follower during return stroke= %.3f m/s^2',Fo,Fr)
