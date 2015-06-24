clear;
clc;
close;
disp("Example 7.6")
W1=460 //in m/s
b1=45 //degrees
W2=376
b2=30
c=5.25
w=0.05
s=3.5
Wt1=W1*sind(45)
Wt2=W2*sind(30)
Wtm=(Wt1+Wt2)/2
Wz1=W1*cosd(45)
Wz2=W2*cosd(30)
Wz=(Wz1+Wz2)/2
bm=(atan(Wtm/Wz))*180/%pi
sigma=c/s
Cd=w/sigma*cosd(bm)
T=s/100*(abs(Wt1-Wt2))
Wm=(Wz^2+Wtm^2)^(1/2)
C1=2*T/(Wm*(c/100))-Cd*tand(bm)
disp(bm,"(a)mean relative flow angle :")
disp(Cd,"(b)The rotor section (2D) drag coefficient :")
disp(T,"(c)The rotor circulation in m^2/s :")
disp(C1,"(d)The rotor sectional (2D) lift coefficient :")