// problem 8.11
y1=30
y2=15
a=13*(10^-4)
x1=15
V1=60
Vf1=V1*sind(y2)
Vw1=V1*cosd(y2)
u=Vw1-(Vf1/tand(y1))
Vw2=u-(Vf1*cosd(y2)/sind(y1))
Vf2=(u-Vw2)*tand(y2)
V2=(Vf2*Vf2+Vw2*Vw2)^0.5
x2=atand(Vf2/Vw2)
g=9.81
p1=1000
w=g*p1
Fx=(w*a*V1*(Vw1-Vw2))/g
Fy=(w*a*V1*(V1*sind(y2)-V2*sind(x2)))/g
Fr=(Fx*Fx+Fy*Fy)^0.5
o=atand(Fy/Fx)
disp(o,Fr,x2,V2,u,"velocity of the vane,direction of velocity at exit,resultant force,angle between forces")
