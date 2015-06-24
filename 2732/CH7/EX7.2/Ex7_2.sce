clc
//initialization of variables
clear
s=3 //m
n=60
p=50 //kg
// calculations
W=n*p
Rc=W*2/s
Rb=W-Rc
dx = 0.001;
x = 0:dx:s
n = s/dx +1;
for i = 1:n
    Sx(i) = -Rb + Rc*x(i)^2/6;
    Mx(i) = Rb*x(i) - Rc*x(i)^3 /18;
end
//Results
figure(1);plot(x,Sx);title("Shear force diagram");xlabel("X (in m)");ylabel("Shear force (in kg)");
figure(2);plot(x,Mx);title("Bending Moment diagram");xlabel("X (in m)");ylabel("Bending Moment (in kg-m)");
