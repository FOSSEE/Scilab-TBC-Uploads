clc
//initialisation of variables
p1=930//lb/in^2
p2=440//lb/in^2
T=268//F
t1=25//F
t2=5//F
h1=19.4//C.H.U
h2=-1.8//C.H.U
h3=29//C.H.U
h4=58.6//C.H.U
d=0.6//C.H.U
d1=0.06//lb
d2=-0.01//lb
c=40//percent
h=24//hour
t3=10//C
d3=15//lb
h5=80//C.H.U
//CALCULATIONS
A=[h1-(h2)]-[d1-(d2)]*T//C.H.U
FD=A/T//units of entropy
AD=(d*h4/T-0.07-A/T)*T//C.H.U
W=4.28//C.H.U
T=AD/W//C.H.U
P=0.4*T//C.H.U
H=P*W*d3//C.H.U
H1=P*W*d3*60*h//C.H.U
H2=t3+h5//C.H.U
W1=H1/(H2*2240)//tond
//RESULTS
printf('The many tons of ice would a machine working between the same limit and having a relative coefficient=% f tons',W1)
