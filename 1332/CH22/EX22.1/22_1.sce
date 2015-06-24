//Example 22.1
//MLP Algorithm
//Page no. 748
clc;clear;close;
deff('y=f(x)','y=1/(1+exp(-x))')
Wih=[0.1,-0.3;0.3,0.4];
Who=[0.4;0.5]
i=[0.2,0.6];
t=0.7;
a=10;
for k=1:3
    printf('\n\n\nAfter Iteration %i :\n\n',k)
    disp(Wih,'Wih = ')
    disp(Who,'Who = ')
a1=i*Wih;
disp(a1,'a = ')
h=[f(a1(1)),f(a1(2))]
disp(h,'h = ')
b1=h*Who
disp(b1,'b1 =')
o=f(b1)
disp(o,'o = ')
d=o*(1-o)*(t-o)
disp(d,'d =')
for j=1:2
    e(1,j)=h(j)*(1-h(j))*d*Who(j)
end
disp(e,'e =')
dWho=a*h'*d;
disp(dWho,'dWho =')
Who=Who+dWho;
dWih=a*i'*e;
disp(dWih,'dWih =')
Wih=Wih+dWih;
end