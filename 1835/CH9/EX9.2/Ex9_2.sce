//CHAPTER 9 ILLUSRTATION 2 PAGE NO 247
//TITLE:CAMS AND FOLLOWERS
clc
clear
pi=3.141
s=4//         follower movement in cm
theta=60//    cam rotation in degrees
THETA=60*pi/180//   cam rotation in rad
thetaD=45//    after outstroke in degrees
thetaR=90//....angle with which it reaches its original position in degrees
THETAR=90*pi/180//   angle with which it reaches its original position in rad
THETAd=360-theta-thetaD-thetaR//      angle after return stroke in degrees
N=300//   speed in rpm
w=2*pi*N/60//   speed in rad/s
Vo=pi*w*s/2/THETA//   Maximum velocity of follower during outstroke in cm/s
Vr=pi*w*s/2/THETAR// Maximum velocity of follower during return stroke in cm/s
Fo=pi^2*w^2*s/2/THETA^2/100//Maximum acceleration of follower during outstroke in m/s^2
Fr=pi^2*w^2*s/2/THETAR^2/100//Maximum acceleration of follower during return stroke in m/s^2
printf('Maximum acceleration of follower during outstroke =%.3f m/s^2\nMaximum acceleration of follower during return stroke= %.3f m/s^2',Fo,Fr)
