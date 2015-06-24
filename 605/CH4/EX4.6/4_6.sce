uo=1.2567*10^-6
f=10^4
W=2*%pi*f
a=4
k=sqrt(W*uo*a/2)+sqrt(W*uo*a/2)*%i
B=real(k)
a=imag(k)
lambda=2*%pi/B
Vp=W/B
delta=1/a
disp(k,"k=")
printf("\nlambda=%f m\nVp=%.4e m/s\ndelta=%.4f m",lambda,Vp,delta)