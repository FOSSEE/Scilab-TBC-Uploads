// problem 5.10
Cd=0.6
x=45
H=0.5
g=9.81
q1=(8*Cd*tand(x/2)*((2*g)^0.5)*(H^2.5))/15
disp(q1,"rate of flow over the rectangular notch in m3/sec")
dq1=0.025
dh=dq1*H/2.5
h1=H+dh
h2=H-dh
disp(h1*100,h2*100,"limiting values of head in centimeters")
