//ques-19.16
//Calculating uncertainity in velocity of a cricket ball
clc
m=0.1;//mass of ball (in kg)
dx=100;//uncertainity in position (in pm)
h=6.6*10^-34;//(in Js)
dv=h/(4*%pi*m*dx*10^-12);
printf("The uncertainity in velocity of the ball is %.2f*10^-24 m/s.",dv*10^24);
