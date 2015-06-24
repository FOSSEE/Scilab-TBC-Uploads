//applying gain formula to state diagram 3-22
//r(t),x1(t) and x2(t) are input nodes
//y(t) is output node
//superposition principle holds good

syms s r x1 x2
//r(t) as input node and y(t) as output node
M1=0
delta1=1
delta=1
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

disp(y1+y2+y3,"y(t)=")
