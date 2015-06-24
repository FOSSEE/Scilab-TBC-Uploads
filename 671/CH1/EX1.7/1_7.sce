R1=1
R2=6
R3=12
R4=4
I4=3/4
V6=6

V4=3/4*4
I12=3/12
IR=3/4+I12

R=-12*I12+V6 //KVL
disp(R,"R(Ohm)=")

I6=V6/6
I1=I6+IR

Vs=1*I1+V6 //KVL
disp(Vs, "Vs(V)=")

disp(Vs*I1,"Power(W)=")


