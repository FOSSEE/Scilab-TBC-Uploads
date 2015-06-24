t=0.1
R=800
i=50*exp(-10*t)/1000
v=50*cos(25*t)
v_i=10*t^(2.5)

P1=i*i*R
P2=v*v/R
P3=v_i

disp(P3,P2,P1)