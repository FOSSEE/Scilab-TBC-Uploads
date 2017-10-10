// Problem no 14.7,Page No.333

clc;clear;
close;
H=8 //m //height of dam
h=7.5 //m //Height of water
a=1 //m //top width
mu=0.6 //Coeffeicient of friction
rho_mason=22.4 //KN/m**3 //weight of mason
rho_w=9.81 //KN/m**3 //density of water

//Calculations

//weight of dam
//W=(a+b)*2**-1*L*H*rho2*10**-3
//After substituting values and further simplifying we get
//W=89600*(b+1)

//Distance of Line of action from vertical base
//x_bar=(b**2+b*a+a**2)*(3*(b+a))**-1
//After substituting values and further simplifying we get
//x_bar=(1+b+b**2)*(3*(1+b))**-1

//Lateral thrust
P=rho_w*h**2*2**-1

//Min width to avoid tension at base
//Z=x_bar+P*W**-1*h*3**-1
//Z=2*3**-1*b
//After substituting values and further simplifying we get
//b**2+b-24.09=0
a=1
b=1
c=-24.09

X=b**2-4*a*c

b1=(-b+X**0.5)*(2*a)**-1
b2=(-b-X**0.5)*(2*a)**-1

//Thus width cannot be negative,b1 is considered

//Min width to avoid sliding
//mu*W>P
//After substituting values and further simplifying we get
b=P*10**3*(mu*89600)**-1-1

//Result
printf("The Min bottom width is %.2f",b);printf(" m")
