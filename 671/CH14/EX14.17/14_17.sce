f=50
w=2*%pi*f

Z2=1000
Z3=16800

C=0.38E-6
Xc=1/%i/w/C
Z4=833+Xc

Z1=Z2*Z3/Z4
Rx=real(Z1)
Lx=imag(Z1)/w

disp(Rx)
disp(Lx)
