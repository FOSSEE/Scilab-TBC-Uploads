// problem 11.6
D=1
N=1000/60
H=700
y=165
y2=180-y
Q=0.1
Cv=0.97
g=9.81
u=D*3.142*N
V1=Cv*(sqrt(2*g*H))
nh=(2*u*(V1-u)*(1+(cosd(y2))))/(V1*V1)
disp(nh*100,"hydraulic efficiency of the wheel")
