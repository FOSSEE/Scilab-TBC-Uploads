f=50
P=4
a=2

ns=120*f/P
n=1440
s=1-n/ns
disp(s)
f2=s*f
disp(f2)
E1p=400
E2f=400/a
E2f2=E2f*f2/f
E2l=sqrt(3)*E2f2
disp(E2l)
