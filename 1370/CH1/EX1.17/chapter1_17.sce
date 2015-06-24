//example1.17
clc
r=10/10
disp(r,"R1(in ohm)=(2*5)/(2+5+3)=")
r=6/10
disp(r,"R2(in ohm)=(3*2)/(2+5+3)=")
r=15/10
disp(r,"R3(in ohm)=(5*3)/(2+5+3)=")
r=50/25
disp(r,"R1(in ohm)=(10*5)/(10+5+10)=")
r=100/25
disp(r,"R2(in ohm)=(10*10)/(10+5+10)=")
r=50/25
disp(r,"R3(in ohm)=(5*10)/(10+5+10)=")
disp("The circuit reduces as shown in the fig 1.86(c)")
r=0.6+4.2439+2
format(7)
disp(r,"R_ab(in ohm)=0.6+4.2439+2=")
disp("as, I=V/R_ab")
v=5*6.8439
format(8)
disp(v,"Therefore,  V(in V)=I*R_ab=")
