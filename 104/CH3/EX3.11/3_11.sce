//applying gain formula to state diagram in figure 3-23(b)
//r(t),x1(t),x2(t) and x3(t) are input nodes
//y(t) is output node
//superposition principle holds good

syms s a0 a1 a2 a3 r x1 x2 x3
//r(t) as input node and y(t) as output node
M1=0
delta1=1
L11=-a0*a3
delta=1-(L11)
a=(M1*delta1)/delta
y1=a*r
disp(y1,"y1(t)=")

//x1(t) as input node and y(t) as output node
M1=1
delta1=1
b=(M1*delta1)/delta
y2=b*x1
disp(y2,"y2(t)=")

//x2(t) as input node and y(t) as output node
M1=0
delta1=1
c=(M1*delta1)/delta
y3=c*x2
disp(y3,"y3(t)=")

//x3(t) as input node and y(t) as output node
M1=a0
delta1=1
d=(M1*delta1)/delta
y4=d*x3
disp(y4,"y4(t)=")

disp(y1+y2+y3+y4,"y(t)=")

