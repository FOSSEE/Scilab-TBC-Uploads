// problem 8.13
V1=40
u=12
x1=20
x2=90
Vw1=V1*cosd(x1)
Vf1=V1*sind(x1)
y1=atand(Vf1/(Vw1-u))
Vr1=Vf1/sind(y1)
Vr2=0.9*Vr1
y2=acosd(u/Vr2)
W=1*Vw1*u
n=W/(V1*V1*0.5*1)
disp(n*100,W,y2,y1,"vane angle at the exit,work done on the vane per kg of water,efficiency")
