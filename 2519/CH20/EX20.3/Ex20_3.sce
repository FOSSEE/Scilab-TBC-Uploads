clc
clear
//Initialization of variables
tl=125 //F
t0=80 //F
t1=1000 //F
d=1 //in
k=25 //Btu/hr ft F
k2=0.0208
Nu=18
//calculations
byal=(tl-t0)/(t1-t0)
al=acosh(1/byal)
b=%pi*d/12
A=%pi*d^2 /(4*144)
tm=(tl+t1)/2 +460
hr=0.79*0.1714*((tm/100)^4 - ((t0+460)/100)^4)/(tm-460-t0)
hc=Nu*k2*12/d
a=((hc+hr)*b/(k*A))^(0.5)
L=al/a
//results
printf("Length required = %.2f ft",L)
