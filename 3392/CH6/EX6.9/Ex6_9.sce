clc
// initialization of variables
clear
Do=22 //mm
Di=18 //mm
Dm=20 //mm
tD=0.1 // t/D
//part (a)
tau=70 //MPa
G=77.5 //GPa
//calculations
Do=Do*10^-3
Di=Di*10^-3
Dm=Dm*10^-3
tau=tau*10^6
G=G*10^9
A=%pi*Dm^2/4
t=Dm*tD
T1=2*A*tau*t
th1=tau*%pi*Dm/(2*G*A)
J=%pi/32*(Do^4-Di^4)
r=Dm/2
T2=tau*J/r
th2=tau/(G*r)
printf('part (a)\n')
printf(' Using formula_1 T = %.2f Nm theta = %.7f rad/mm ',T1,th1*10^-3)
printf('\n Using formula_2 T = %.2f Nm theta = %.7f rad/mm ',T2,th2*10^-3)
//part (b)
h=1 //mm
h=h*10^-3
b=10*%pi
b=b*10^-3
T=8*b*h^2*tau/3
th=tau/(2*G*h)
printf('\n part (b)')
printf('\n T = %.3f N.m    theta = %.7f rad/mm ',T,th*10^-3)
