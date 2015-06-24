clc
//initialisation of variables
a=30//percent
b=20//percent
c=8//percent
h=42//percent
t1=20//degree C
g=0.24//in
t2=320//degree c
M=7.654//lb/lb fuel
A=3*M//lb/lb fuel
W=0.08+0.04//lb
T=A+0.8//lb
w1=0.72+0.3//lb
w=T-w1//lb
d=w*0.24*(t2-b)//C H U/lb fuel
H=1.02*(639+0.49*220-t1)//C H U/lb fuel
//CALCULATIONS
T1=d+H//C H U/lb fuel
//RESULTS
printf('total heat carried away by flue gases=% f C H U/lb fuel',T1)
