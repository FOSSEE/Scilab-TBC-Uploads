// problem 8.12
V1=13
y1=30
y2=y1
u=4.5
g=9.81
p1=1000
w=g*p1
Q=0.001
x1=acosd(0.9394)
Vw1=V1*cosd(x1)
Vr1=(Vw1-u)/cosd(y1)
Vw2=Vr1*cosd(y1)-u
Vf2=Vr1*sind(y1)
V2=(Vf2*Vf2+Vw2*Vw2)^0.5
x2=atand(Vf2/Vw2)
W=(w*Q*(Vw1+Vw2)*u)/g
disp(W,x2,V2,x1,"direction of velocity, velocity of water at exit,direction of work,magnitude of work done per kg of water")
