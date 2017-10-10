// example:-9.1,page no.-462.
// program to compute the propagation constant,phase velocity and bloch impedence.
Co=2.666*10^-12;
d=0.01;c=3*10^8;
Zo=50;f=3*10^9;
p=(Co*Zo*c)/(2*d); // constant of equation given below.
y=0:0.001:0.96;
x=acos(cos(y)-p.*y.*sin(y)); // x=ko*d; and y=beta*d;
subplot(2,1,1)
plot2d(x,y,style=2,rect=[-%pi,0,%pi,0.96])
plot2d(-x,y,style=2,rect=[-%pi,0,%pi,0.96])
xtitle("k-beta diagram for first pass band ","beta*d","ko*d")
y=3:0.001:4;
x=acos(cos(y)-p.*y.*sin(y)); // x=ko*d; and y=beta*d;
ko=(2*%pi*f)/c;
subplot(2,1,2)
plot2d(x,y,style=3,rect=[-%pi,3,%pi,4])
plot2d(-x,y,style=3,rect=[-%pi,3,%pi,4])
xtitle("k-beta diagram for second pass band ","beta*d","ko*d")
bta=(acos(cos(ko*d)-p*ko*d*sin(ko*d)))/d;
vp=(ko*c)/150; // phase velocity.
b=2*%pi*f*Co*Zo;
A=cos(ko*d)-(b/2)*sin(ko*d);
B=%i*(sin(ko*d)+(b/2)*cos(ko*d)-(b/2));
Zb=(B*Zo)/sqrt(A^2-1); // bloch impedence.
disp(Zb,'Bloch impedence = ')
disp(vp,'phase velocity = ')
disp(bta,'propagation constant = ')