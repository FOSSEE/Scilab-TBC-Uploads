// problem 6.14
l=600
H=160
p=1200*1000
n=0.85
f=0.005
hf=H/3
w=9810
H1=H-hf
q=p/(w*H1*n)
d=((f*l*q*q)/(3*hf))^0.2
disp(d*100,"minimium diameter of the pipe in cm")
