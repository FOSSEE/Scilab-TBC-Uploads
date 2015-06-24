// problem 8.9
x1=30
V1=30
Q=0.001
g=9.81
w=g*1000
Vf1=V1*sind(x1)
Vw1=V1*cosd(x1)
u=15
x2=120
y1=atand(Vf1/(Vw1-u))
Vr1=((Vf1*Vf1)+((Vw1-u)^2))^0.5
z=u*sind(x2)/Vr1
y2=60-asind(z)
V2=Vr1*sind(y2)/sind(x2)
Vw2=V2*cosd(x2/2)
W=(w*Q*(Vw1+Vw2)*u)/g
n=W*2/(V1*V1)
disp(n*100,W,y2,"angle of vane,work done of water entering the vane,efficiency")
