clc

b=0.25 //m
w=6900*(2*%pi/60) //rpm
t1=0.075 //m
t2=0.015 //m
row=7.8*10^3//Ns^2/m^4
c1=t1

x=t2/t1
disp(x)

//(t2/t1)==(c1*exp(-(row*w^2/2*sigma)*b^2))/c1
//exp(-(row*w^2/2*sigma)*b^2)=x
//log(x)=-(row*w^2*b^2/2*sigma)
y=2*log(x)
disp(y)
sigma=-(row*w^2*b^2)/y
disp(sigma,"in Pa is= ")

//t=c1*exp(-row*(w^2/2*sigma)*r^2)
z=row*(w^2/(2*sigma))
disp(z)
