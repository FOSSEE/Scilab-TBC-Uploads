clc
//initialisation of variables
p=100//lb/in^2
w=2400//lb
t1=15//degree C
s1=165.9//C.H.U/lb
x=0.9//lb
L2=493.4//C.H.U/lb
t2=65//degree
x4=0.8//lb
s3=64.8//C.H.U/lb
w1=2000//lb
w2=2400//lb
b1=12400//lb
b2=22000//lb
p1=4400//lb
n=421.65//lb
h1=w2*[s1+(x*L2)]//C.H.U/hr
h2=w1*[s1+(x4+L2)]//C.H.U/hr
//CALCULATIONS
T=w*[(s1-t1)+(x*L2)]//C.H.U/hr
T1=w1*[(s1-s3)+(x4*L2)]//C.H.U/hr
H=T+T1//C.H.U/hr
X=n/L2//C.H.U/lb
//RESULTS
printf('The thermal capacity of the pipe=% f C.H.U/hr',X)
