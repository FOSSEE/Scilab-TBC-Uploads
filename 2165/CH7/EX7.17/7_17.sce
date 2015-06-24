clc
//initialisation of variables
v=7950//lb C.H.U /lb
w=15//percent
c=0.85//lb
w1=14//percent
w2=9//percent
t1=15//degree C
t2=325//degree C
g=0.25//lb
//CALCULATIONS
H=c*v//C.H.U
H1=0.15*(638.9+0.48*225-15)//C.H.U
C=c*c//lb
A=19.2//lb
Wt=A+C//lb
P=Wt*g*(t2-t1)//C.H.U/lb coal
R=0.14*H//C.H.U
R1=H-H1-P-R//C.H.U
B=R1/H*100//percent
//RESULTS
printf('the efficiency of a boiler =% f percent',B)
