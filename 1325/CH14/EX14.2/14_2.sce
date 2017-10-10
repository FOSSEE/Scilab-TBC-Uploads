//to find the position and magnitude of the balance weight required 
clc
//given
Wa=200//lb
Wb=300//lb
Wc=240//lb
W1=260//lb
ra=9//in
rb=7//in
rc=10//in
r1=12//in
R=24//in
alpha=45*%pi/180
bita=75*%pi/180
gama=135*%pi/180
Hb=Wa*ra+Wb*rb*cos(alpha)-Wc*rc*cos(gama-bita)-W1*r1*cos(bita)//horizontal component after resolving
Vb=Wb*rb*sin(alpha)+Wc*rc*sin(gama-bita)-W1*r1*sin(bita)//vertical component after resolving
Bb=(Hb^2+Vb^2)^(1/2)
B=Bb/R
theta=atand(Vb/Hb)
printf("\nBalance weight required = %.1f lb\ntheta = %.2f degrees",B,theta)
