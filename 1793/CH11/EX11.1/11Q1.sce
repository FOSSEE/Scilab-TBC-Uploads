clc
Tz=150
b=1
l=2
z=5*b
Es= (10000*2 + 8000*1 +12000*2)/5
a=4
H=z
m=l/b
n=2*H/b
F1=0.641 //from tables 11.1 and 11.2
F2=0.031
u=0.3
Is= F1 + ((2-u)/(1-u))*F2
If=0.71 //from  table 11.3
Sef= Tz *a*b/l *(1-u^2)*Is*If/Es
Ser=0.93*Sef
printf('The elastic settlement at the centre of foundation = %f m',Ser)
