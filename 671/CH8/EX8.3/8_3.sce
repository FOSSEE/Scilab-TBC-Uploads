P=200E3
V1=11000
V2=415
f=50
N2=80

N1=V1/V2*N2
a=N1/N2
disp(a)

I2=P/V2
disp(I2)
I1=I2/a
disp(I1)

Z2=V2*V2/P
disp(Z2)
Z21=Z2*a*a
disp(Z21)
