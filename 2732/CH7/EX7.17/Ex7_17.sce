clc
//initialization of new variables
clear
P=2000 //kg
a=4 //cm
b=1 //cm
d=7 //cm
r=3 //cm
// calculations
A=(a+b)/2*d
xbar=(a+b*2)*d/(r*(a+b))
rbar=r+xbar
I=b*d^3/12+r*d^3/12
Ixx=I-A*2.8^2
e=Ixx/(rbar*A)
f1=P*5.8*(xbar-0.62)/(A*0.62*r)
f2=P*5.8*(-d+2.18)/(A*0.62*(5.18+d-2.18))
str=P/A
Str_i=f1+str
Str_o=-f2-str
//Results
printf('stress at the inner side of the hook = %.1f kg/cm^2 (tensile)',Str_i)
printf('\n stress at the outer side of the hook = %.1f kg/cm^2 (compressive)',Str_o)
// approximations involved in the text
