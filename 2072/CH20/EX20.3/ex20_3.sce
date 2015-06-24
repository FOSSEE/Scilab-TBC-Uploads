//example20.3
clc
B=.25//in T
l=.5
v=2//in m/s
e=B*l*v
disp("Solution a")
disp(e,"Induced emf in volt=")
R=.5//in ohm
I=e/R

disp("Solution b")
disp(I,"Current in A=")
delta_v=.25
P=I*delta_v
disp("Solution c")
disp(P,"Power in watt=")
t=1//in s
w=P*t
disp(w,"Energy delivered in J=")
// Answer give for J in textbook is wrong
d=v*t
F=w/d
disp("Solution d")
disp(F,"Force in N=")





