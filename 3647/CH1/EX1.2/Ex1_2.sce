//Distance travel calculation
clc
//initialisation of variables
w=200//tonf
d=4//tonf
h=120//tonf
v=25//mile/h
m=10//lbf/tonf
q=2240//lbf
//CALCULATIONS
F=w*m//lbf
W=(w*q)*(1/h)//lbf
T=F+W//lbf
D=d*q//lbf
A=D-T//lbf
t=158.1//sec
T1=(v/2)*(88/60)*t//ft
//RESULTS
printf('Distance travel=% f ft',T1)
