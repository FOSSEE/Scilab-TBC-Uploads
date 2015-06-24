
betaa=acos(0)*2/5
coilpitch=%pi-betaa
disp(coilpitch/%pi*180)

P=6
S=72
m=S/P
gammaa=%pi/m
cpis=150/180*%pi
betaa=%pi-cpis
Kp1=cos(betaa/2)
Kp3=cos(5*betaa/2)
Kp13=cos(13*betaa/2)
disp(Kp1)
disp(Kp3)
disp(Kp13)
