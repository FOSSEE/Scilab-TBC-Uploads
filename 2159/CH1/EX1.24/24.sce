// problem 1.24
x=30
z=sin(3.142*x/180)
d=1.4
h=3
b=1.5
h1=z+d
a=0.5*h*b
w=9810
p=w*a*h1
h11=((z*z*h*h*h*b)/(36*a*h1))+h1
disp(p,"total pressure on the plate")
disp(h11,"position of centre of pressure")
