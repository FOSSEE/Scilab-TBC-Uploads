//example 9.8
clc; funcprot(0);
pi=%pi;
Gamma=105;
Cov=14;
B=15/12;
Ka=0.26;
phi=35*pi/180;
H=37.5/12;
h=15/12;
t=6/12;
Gc=150;//gamma concrete
W=H*t*Gc;
k=4.5;//kp*cos(delta)
Pu=1/2*Gamma*H^2*(k-Ka*cos(phi));
disp(Pu,"force in lb/ft");
Pus=[(Cov+1)/(Cov+H/h)]*Pu;
disp(Pus,"force in lb/ft");
Be=0.227*(H+h)+B;
Pu=Pus*Be;
disp(Pu,"resistance of anchor plate i lb/ft")

