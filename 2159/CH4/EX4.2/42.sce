// problem 4.2
q=0.0982
d=0.12
H=10
x=4.5
y=0.54
g=9.81
Vth=(2*g*H)^0.5
a=3.142*d*d/4
Qth=Vth*a
Cd=q/Qth
Cv=((x*x)/(4*y*H))^0.5
Cc=Cd/Cv
disp(Cc,Cv,Cd,"Cd ,Cv, Cc  of the orifice")
