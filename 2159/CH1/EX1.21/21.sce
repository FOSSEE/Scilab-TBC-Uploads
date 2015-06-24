// problem 1.21
x=30
d=1.2
h=1.5
w=9810
z=sin(x*3.142/180)
h1=(z*d*0.5)+h
a=0.25*3.142*d*d
p=a*w*h1
h11=(d*d*z*z)/(16*h1)+h1
disp(p,"total pressure")
disp(h11,"position of centre of pressure")


