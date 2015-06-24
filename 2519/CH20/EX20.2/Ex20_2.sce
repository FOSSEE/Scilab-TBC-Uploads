clc
clear
//Initialization of variables
d1=1 //in
l=1 //ft
r=0.5 //ft
L=0.5 //in
Ts=430 //F
Ta=170 //F
del=0.0125 //ft
h=10 //Btu/hr ft^2 F
eta=0.77
eta2=0.94
n=60 //fins
thick=0.025 //in
k2=132 //Btu/hr ft F
//calculations
Q=h*%pi*d1^2 *(Ts-Ta)/12
rate=(r+L)/r
k=26 //Btu/hr ft F
Lt=L/12 *(h*12/(k*del))^(1/2)
dtm=eta*(Ts-Ta)
As=2*%pi*((2*d1)^2 -d1^2)/4
Q1=h*n*As*dtm/144
Q2=h*%pi*d1*(12-60*thick)*(Ts-Ta)/144
Qt=Q1+Q2
al=0.8
tl=Ta+(Ts-Ta)/cosh(al)
al2=r/12 *(h*12*2/(k2*thick))
dtm2=eta2*(Ts-Ta)
Q12=h*n*As*dtm2/144
Qt2=Q12+Q2
//results
printf("Heat rate per foot of bare tube = %.1f Btu/hr",Q)
printf("\n Total hourly heat loss per foot of finned tube = %.1f Btu/hr",Qt)
printf("\n Approx. temp for tip of the fin = %d F",tl)
printf("\n In case of Al, Total beat loss = %.1f Btu/hr",Qt2)
disp("The answers in the textbook are a bit different due to rounding off errors")
